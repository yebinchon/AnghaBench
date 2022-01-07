
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dwmmc_softc {TYPE_1__* desc_ring; } ;
struct TYPE_5__ {int ds_addr; int ds_len; } ;
typedef TYPE_2__ bus_dma_segment_t ;
struct TYPE_4__ {int des0; int des2; int des1; } ;


 int DES0_CH ;
 int DES0_DIC ;
 int DES0_FS ;
 int DES0_LD ;
 int DES0_OWN ;
 int dprintf (char*,int,int ) ;

__attribute__((used)) static void
dwmmc_ring_setup(void *arg, bus_dma_segment_t *segs, int nsegs, int error)
{
 struct dwmmc_softc *sc;
 int idx;

 if (error != 0)
  return;

 sc = arg;

 dprintf("nsegs %d seg0len %lu\n", nsegs, segs[0].ds_len);

 for (idx = 0; idx < nsegs; idx++) {
  sc->desc_ring[idx].des0 = (DES0_OWN | DES0_DIC | DES0_CH);
  sc->desc_ring[idx].des1 = segs[idx].ds_len;
  sc->desc_ring[idx].des2 = segs[idx].ds_addr;

  if (idx == 0)
   sc->desc_ring[idx].des0 |= DES0_FS;

  if (idx == (nsegs - 1)) {
   sc->desc_ring[idx].des0 &= ~(DES0_DIC | DES0_CH);
   sc->desc_ring[idx].des0 |= DES0_LD;
  }
 }
}
