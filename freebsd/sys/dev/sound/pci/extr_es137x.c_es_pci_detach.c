
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct es_info {scalar_t__ num; int lock; int parent_dmat; int reg; int regid; int regtype; int irq; int irqid; int ih; int poll_timer; scalar_t__ polling; } ;
typedef int device_t ;


 int ES_LOCK (struct es_info*) ;
 int ES_UNLOCK (struct es_info*) ;
 int M_DEVBUF ;
 int SYS_RES_IRQ ;
 int bus_dma_tag_destroy (int ) ;
 int bus_release_resource (int ,int ,int ,int ) ;
 int bus_teardown_intr (int ,int ,int ) ;
 int callout_drain (int *) ;
 int callout_stop (int *) ;
 int free (struct es_info*,int ) ;
 struct es_info* pcm_getdevinfo (int ) ;
 int pcm_unregister (int ) ;
 int snd_mtxfree (int ) ;

__attribute__((used)) static int
es_pci_detach(device_t dev)
{
 int r;
 struct es_info *es;

 r = pcm_unregister(dev);
 if (r)
  return (r);

 es = pcm_getdevinfo(dev);

 if (es != ((void*)0) && es->num != 0) {
  ES_LOCK(es);
  es->polling = 0;
  callout_stop(&es->poll_timer);
  ES_UNLOCK(es);
  callout_drain(&es->poll_timer);
 }

 bus_teardown_intr(dev, es->irq, es->ih);
 bus_release_resource(dev, SYS_RES_IRQ, es->irqid, es->irq);
 bus_release_resource(dev, es->regtype, es->regid, es->reg);
 bus_dma_tag_destroy(es->parent_dmat);
 snd_mtxfree(es->lock);
 free(es, M_DEVBUF);

 return (0);
}
