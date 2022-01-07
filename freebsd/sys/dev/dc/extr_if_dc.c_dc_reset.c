
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_softc {int dc_dev; } ;


 int CSR_READ_4 (struct dc_softc*,int ) ;
 int CSR_WRITE_4 (struct dc_softc*,int ,int) ;
 int DC_10BTCTRL ;
 int DC_BUSCTL ;
 int DC_BUSCTL_RESET ;
 int DC_CLRBIT (struct dc_softc*,int ,int) ;
 int DC_IMR ;
 scalar_t__ DC_IS_ADMTEK (struct dc_softc*) ;
 scalar_t__ DC_IS_ASIX (struct dc_softc*) ;
 scalar_t__ DC_IS_CONEXANT (struct dc_softc*) ;
 scalar_t__ DC_IS_INTEL (struct dc_softc*) ;
 scalar_t__ DC_IS_ULI (struct dc_softc*) ;
 scalar_t__ DC_IS_XIRCOM (struct dc_softc*) ;
 int DC_NETCFG ;
 int DC_SETBIT (struct dc_softc*,int ,int) ;
 int DC_SIARESET ;
 int DC_SIA_RESET ;
 int DC_TIMEOUT ;
 int DC_WATCHDOG ;
 int DELAY (int) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static void
dc_reset(struct dc_softc *sc)
{
 int i;

 DC_SETBIT(sc, DC_BUSCTL, DC_BUSCTL_RESET);

 for (i = 0; i < DC_TIMEOUT; i++) {
  DELAY(10);
  if (!(CSR_READ_4(sc, DC_BUSCTL) & DC_BUSCTL_RESET))
   break;
 }

 if (DC_IS_ASIX(sc) || DC_IS_ADMTEK(sc) || DC_IS_CONEXANT(sc) ||
     DC_IS_XIRCOM(sc) || DC_IS_INTEL(sc) || DC_IS_ULI(sc)) {
  DELAY(10000);
  DC_CLRBIT(sc, DC_BUSCTL, DC_BUSCTL_RESET);
  i = 0;
 }

 if (i == DC_TIMEOUT)
  device_printf(sc->dc_dev, "reset never completed!\n");


 DELAY(1000);

 CSR_WRITE_4(sc, DC_IMR, 0x00000000);
 CSR_WRITE_4(sc, DC_BUSCTL, 0x00000000);
 CSR_WRITE_4(sc, DC_NETCFG, 0x00000000);







 if (DC_IS_INTEL(sc)) {
  DC_SETBIT(sc, DC_SIARESET, DC_SIA_RESET);
  CSR_WRITE_4(sc, DC_10BTCTRL, 0xFFFFFFFF);
  CSR_WRITE_4(sc, DC_WATCHDOG, 0);
 }
}
