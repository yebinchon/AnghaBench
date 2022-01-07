
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct hdac_softc {int num_ss; int lock; int * chan_dmat; int corb_dma; int rirb_dma; int pos_dma; TYPE_2__* streams; int unsolq_task; TYPE_1__* codecs; } ;
struct TYPE_12__ {int bdl; } ;
typedef TYPE_2__ device_t ;
struct TYPE_11__ {int * dev; } ;


 int M_HDAC ;
 int M_TEMP ;
 int bus_dma_tag_destroy (int *) ;
 int device_delete_child (TYPE_2__,TYPE_2__) ;
 int device_get_children (TYPE_2__,TYPE_2__**,int*) ;
 scalar_t__ device_get_ivars (TYPE_2__) ;
 struct hdac_softc* device_get_softc (TYPE_2__) ;
 int free (TYPE_2__*,int ) ;
 int hdac_dma_free (struct hdac_softc*,int *) ;
 int hdac_irq_free (struct hdac_softc*) ;
 int hdac_lock (struct hdac_softc*) ;
 int hdac_mem_free (struct hdac_softc*) ;
 int hdac_reset (struct hdac_softc*,int ) ;
 int hdac_unlock (struct hdac_softc*) ;
 int snd_mtxfree (int ) ;
 int taskqueue_drain (int ,int *) ;
 int taskqueue_thread ;

__attribute__((used)) static int
hdac_detach(device_t dev)
{
 struct hdac_softc *sc = device_get_softc(dev);
 device_t *devlist;
 int cad, i, devcount, error;

 if ((error = device_get_children(dev, &devlist, &devcount)) != 0)
  return (error);
 for (i = 0; i < devcount; i++) {
  cad = (intptr_t)device_get_ivars(devlist[i]);
  if ((error = device_delete_child(dev, devlist[i])) != 0) {
   free(devlist, M_TEMP);
   return (error);
  }
  sc->codecs[cad].dev = ((void*)0);
 }
 free(devlist, M_TEMP);

 hdac_lock(sc);
 hdac_reset(sc, 0);
 hdac_unlock(sc);
 taskqueue_drain(taskqueue_thread, &sc->unsolq_task);
 hdac_irq_free(sc);

 for (i = 0; i < sc->num_ss; i++)
  hdac_dma_free(sc, &sc->streams[i].bdl);
 free(sc->streams, M_HDAC);
 hdac_dma_free(sc, &sc->pos_dma);
 hdac_dma_free(sc, &sc->rirb_dma);
 hdac_dma_free(sc, &sc->corb_dma);
 if (sc->chan_dmat != ((void*)0)) {
  bus_dma_tag_destroy(sc->chan_dmat);
  sc->chan_dmat = ((void*)0);
 }
 hdac_mem_free(sc);
 snd_mtxfree(sc->lock);
 return (0);
}
