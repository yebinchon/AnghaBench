
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct rc_softc {int dummy; } ;


 int CCRCMD (struct rc_softc*,int,int ) ;
 int CCR_HWRESET ;
 int CD180_GICR ;
 int CD180_GIVR ;
 int CD180_PILR1 ;
 int CD180_PILR2 ;
 int CD180_PILR3 ;
 int CD180_PPRH ;
 int CD180_PPRL ;
 int DELAY (int) ;
 int RC_CTOUT ;
 int RC_DTREG ;
 int RC_OSCFREQ ;
 int RC_PILR_MODEM ;
 int RC_PILR_RX ;
 int RC_PILR_TX ;
 int WAITFORCCR (struct rc_softc*,int) ;
 int rcout (struct rc_softc*,int ,int) ;

__attribute__((used)) static void
rc_hwreset(struct rc_softc *sc, u_int chipid)
{
 CCRCMD(sc, -1, CCR_HWRESET);
 DELAY(20000);
 WAITFORCCR(sc, -1);

 rcout(sc, RC_CTOUT, 0);
 rcout(sc, CD180_GIVR, chipid);
 rcout(sc, CD180_GICR, 0);


 rcout(sc, CD180_PPRL, ((RC_OSCFREQ + 999) / 1000) & 0xFF);
 rcout(sc, CD180_PPRH, ((RC_OSCFREQ + 999) / 1000) >> 8);


 rcout(sc, CD180_PILR1, RC_PILR_MODEM);
 rcout(sc, CD180_PILR2, RC_PILR_TX);
 rcout(sc, CD180_PILR3, RC_PILR_RX);


 rcout(sc, RC_DTREG, ~0);
}
