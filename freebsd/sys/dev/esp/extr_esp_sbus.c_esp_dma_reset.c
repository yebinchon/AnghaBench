
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncr53c9x_softc {int dummy; } ;
struct esp_softc {int sc_dma; } ;


 int DMA_RESET (int ) ;

__attribute__((used)) static void
esp_dma_reset(struct ncr53c9x_softc *sc)
{
 struct esp_softc *esc = (struct esp_softc *)sc;

 DMA_RESET(esc->sc_dma);
}
