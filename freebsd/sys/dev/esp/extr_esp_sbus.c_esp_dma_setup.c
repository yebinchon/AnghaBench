
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncr53c9x_softc {int dummy; } ;
struct esp_softc {int sc_dma; } ;


 int DMA_SETUP (int ,void**,size_t*,int,size_t*) ;

__attribute__((used)) static int
esp_dma_setup(struct ncr53c9x_softc *sc, void **addr, size_t *len,
    int datain, size_t *dmasize)
{
 struct esp_softc *esc = (struct esp_softc *)sc;

 return (DMA_SETUP(esc->sc_dma, addr, len, datain, dmasize));
}
