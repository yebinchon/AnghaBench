
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lsi64854_softc {int dummy; } ;
struct le_dma_softc {struct lsi64854_softc* sc_dma; } ;
struct lance_softc {int dummy; } ;


 int DMA_INTR (struct lsi64854_softc*) ;

__attribute__((used)) static int
le_dma_hwintr(struct lance_softc *sc)
{
 struct le_dma_softc *lesc = (struct le_dma_softc *)sc;
 struct lsi64854_softc *dma = lesc->sc_dma;

 return (DMA_INTR(dma));
}
