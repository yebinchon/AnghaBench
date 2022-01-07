
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncr53c9x_softc {int dummy; } ;
struct esp_softc {int sc_dma; } ;


 int DMA_ISINTR (int ) ;

__attribute__((used)) static int
esp_dma_isintr(struct ncr53c9x_softc *sc)
{
 struct esp_softc *esc = (struct esp_softc *)sc;

 return (DMA_ISINTR(esc->sc_dma));
}
