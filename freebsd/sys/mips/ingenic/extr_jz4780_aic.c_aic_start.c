
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_pcminfo {struct aic_softc* sc; } ;
struct aic_softc {int dummy; } ;


 int AICCR ;
 int AICCR_CHANNEL_2 ;
 int AICCR_ERPL ;
 int AICCR_ISS_16 ;
 int AICCR_OSS_16 ;
 int AICCR_TDMS ;
 int I2SCR ;
 int I2SCR_ESCLK ;
 int READ4 (struct aic_softc*,int ) ;
 int WRITE4 (struct aic_softc*,int ,int) ;
 int setup_xdma (struct sc_pcminfo*) ;

__attribute__((used)) static int
aic_start(struct sc_pcminfo *scp)
{
 struct aic_softc *sc;
 int reg;

 sc = scp->sc;


 reg = READ4(sc, I2SCR);
 reg |= (I2SCR_ESCLK);
 WRITE4(sc, I2SCR, reg);

 setup_xdma(scp);

 reg = (AICCR_OSS_16 | AICCR_ISS_16);
 reg |= (AICCR_CHANNEL_2);
 reg |= (AICCR_TDMS);
 reg |= (AICCR_ERPL);
 WRITE4(sc, AICCR, reg);

 return (0);
}
