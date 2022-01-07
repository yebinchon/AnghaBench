
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aoa_softc {struct aoa_dma* sc_intrp; } ;
struct aoa_dma {int slot; int slots; int mutex; int pcm; int channel; int running; } ;


 int chn_intr (int ) ;
 int dbdma_clear_cmd_status (int ,int) ;
 scalar_t__ dbdma_get_cmd_status (int ,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

void
aoa_interrupt(void *xsc)
{
 struct aoa_softc *sc = xsc;
 struct aoa_dma *dma;

 if (!(dma = sc->sc_intrp) || !dma->running)
  return;

 mtx_lock(&dma->mutex);

 while (dbdma_get_cmd_status(dma->channel, dma->slot)) {

  dbdma_clear_cmd_status(dma->channel, dma->slot);
  dma->slot = (dma->slot + 1) % dma->slots;

  mtx_unlock(&dma->mutex);
  chn_intr(dma->pcm);
  mtx_lock(&dma->mutex);
 }

 mtx_unlock(&dma->mutex);
}
