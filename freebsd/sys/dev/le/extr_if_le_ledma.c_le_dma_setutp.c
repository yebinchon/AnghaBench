
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lsi64854_softc {int dummy; } ;
struct le_dma_softc {struct lsi64854_softc* sc_dma; } ;
struct lance_softc {int dummy; } ;


 int DELAY (int) ;
 int E_TP_AUI ;
 int L64854_GCSR (struct lsi64854_softc*) ;
 int L64854_SCSR (struct lsi64854_softc*,int) ;

__attribute__((used)) static void
le_dma_setutp(struct lance_softc *sc)
{
 struct lsi64854_softc *dma = ((struct le_dma_softc *)sc)->sc_dma;

 L64854_SCSR(dma, L64854_GCSR(dma) | E_TP_AUI);
 DELAY(20000);
}
