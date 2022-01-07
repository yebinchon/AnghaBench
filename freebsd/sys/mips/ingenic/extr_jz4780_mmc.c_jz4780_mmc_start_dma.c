
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jz4780_mmc_softc {int sc_dma_ctl; int sc_dma_desc_phys; } ;


 int JZ_MMC_WRITE_4 (struct jz4780_mmc_softc*,int ,int ) ;
 int JZ_MSC_DMAC ;
 int JZ_MSC_DMANDA ;

__attribute__((used)) static void
jz4780_mmc_start_dma(struct jz4780_mmc_softc *sc)
{


 JZ_MMC_WRITE_4(sc, JZ_MSC_DMANDA, sc->sc_dma_desc_phys);

 JZ_MMC_WRITE_4(sc, JZ_MSC_DMAC, sc->sc_dma_ctl);
}
