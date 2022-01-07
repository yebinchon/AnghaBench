
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_pcminfo {struct aic_softc* sc; } ;
struct aic_softc {int xchan; } ;


 int AICCR ;
 int AICCR_ERPL ;
 int AICCR_TDMS ;
 int READ4 (struct aic_softc*,int ) ;
 int WRITE4 (struct aic_softc*,int ,int) ;
 int XDMA_CMD_TERMINATE ;
 int xdma_control (int ,int ) ;

__attribute__((used)) static int
aic_stop(struct sc_pcminfo *scp)
{
 struct aic_softc *sc;
 int reg;

 sc = scp->sc;

 reg = READ4(sc, AICCR);
 reg &= ~(AICCR_TDMS | AICCR_ERPL);
 WRITE4(sc, AICCR, reg);

 xdma_control(sc->xchan, XDMA_CMD_TERMINATE);

 return (0);
}
