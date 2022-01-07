
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncr53c9x_softc {int dummy; } ;
struct esp_softc {int sc_dma; } ;


 int D_EN_DMA ;
 int L64854_GCSR (int ) ;
 int L64854_SCSR (int ,int) ;

__attribute__((used)) static void
esp_dma_stop(struct ncr53c9x_softc *sc)
{
 struct esp_softc *esc = (struct esp_softc *)sc;

 L64854_SCSR(esc->sc_dma, L64854_GCSR(esc->sc_dma) & ~D_EN_DMA);
}
