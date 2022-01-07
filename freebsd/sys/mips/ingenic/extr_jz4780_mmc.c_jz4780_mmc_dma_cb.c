
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct jz4780_mmc_softc {int sc_dma_map_err; int sc_dev; scalar_t__ sc_dma_desc_phys; struct jz4780_mmc_dma_desc* sc_dma_desc; } ;
struct jz4780_mmc_dma_desc {int dma_cmd; scalar_t__ dma_next; int dma_len; int dma_phys; } ;
struct TYPE_3__ {int ds_len; int ds_addr; } ;
typedef TYPE_1__ bus_dma_segment_t ;


 int JZ_DMA_ENDI ;
 int JZ_DMA_LINK ;
 int device_printf (int ,char*,int,scalar_t__,int ,int ,scalar_t__,int) ;

__attribute__((used)) static void
jz4780_mmc_dma_cb(void *arg, bus_dma_segment_t *segs, int nsegs, int err)
{
 struct jz4780_mmc_dma_desc *dma_desc;
 struct jz4780_mmc_softc *sc;
 uint32_t dma_desc_phys;
 int i;

 sc = (struct jz4780_mmc_softc *)arg;
 sc->sc_dma_map_err = err;
 dma_desc = sc->sc_dma_desc;
 dma_desc_phys = sc->sc_dma_desc_phys;


 for (i = 0; i < nsegs; i++) {
  dma_desc[i].dma_phys = segs[i].ds_addr;
  dma_desc[i].dma_len = segs[i].ds_len;
  if (i < (nsegs - 1)) {
   dma_desc_phys += sizeof(struct jz4780_mmc_dma_desc);
   dma_desc[i].dma_next = dma_desc_phys;
   dma_desc[i].dma_cmd = (i << 16) | JZ_DMA_LINK;
  } else {
   dma_desc[i].dma_next = 0;
   dma_desc[i].dma_cmd = (i << 16) | JZ_DMA_ENDI;
  }






  }
}
