
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncr53c9x_softc {int dummy; } ;
struct esp_softc {int sc_dma; } ;


 int DMA_ISACTIVE (int ) ;

__attribute__((used)) static int
esp_dma_isactive(struct ncr53c9x_softc *sc)
{
 struct esp_softc *esc = (struct esp_softc *)sc;

 return (DMA_ISACTIVE(esc->sc_dma));
}
