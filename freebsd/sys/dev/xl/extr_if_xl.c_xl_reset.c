
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xl_softc {int xl_flags; int xl_dev; } ;


 int CSR_READ_2 (struct xl_softc*,int ) ;
 int CSR_WRITE_2 (struct xl_softc*,int ,int) ;
 int DELAY (int) ;
 int XL_CMD_RESET ;
 int XL_CMD_RX_RESET ;
 int XL_CMD_TX_RESET ;
 int XL_COMMAND ;
 int XL_FLAG_INVERT_LED_PWR ;
 int XL_FLAG_INVERT_MII_PWR ;
 int XL_FLAG_USE_MMIO ;
 int XL_FLAG_WEIRDRESET ;
 int XL_LOCK_ASSERT (struct xl_softc*) ;
 int XL_RESETOPT_DISADVFD ;
 int XL_RESETOPT_INVERT_LED ;
 int XL_RESETOPT_INVERT_MII ;
 int XL_SEL_WIN (int) ;
 int XL_STATUS ;
 int XL_STAT_CMDBUSY ;
 int XL_TIMEOUT ;
 int XL_W2_RESET_OPTIONS ;
 int device_printf (int ,char*) ;
 int xl_wait (struct xl_softc*) ;

__attribute__((used)) static void
xl_reset(struct xl_softc *sc)
{
 int i;

 XL_LOCK_ASSERT(sc);

 XL_SEL_WIN(0);
 CSR_WRITE_2(sc, XL_COMMAND, XL_CMD_RESET |
     ((sc->xl_flags & XL_FLAG_WEIRDRESET) ?
      XL_RESETOPT_DISADVFD:0));
 if (sc->xl_flags & XL_FLAG_USE_MMIO)
  DELAY(100000);

 for (i = 0; i < XL_TIMEOUT; i++) {
  DELAY(10);
  if (!(CSR_READ_2(sc, XL_STATUS) & XL_STAT_CMDBUSY))
   break;
 }

 if (i == XL_TIMEOUT)
  device_printf(sc->xl_dev, "reset didn't complete\n");
 CSR_WRITE_2(sc, XL_COMMAND, XL_CMD_RX_RESET);
 DELAY(100000);
 xl_wait(sc);
 CSR_WRITE_2(sc, XL_COMMAND, XL_CMD_TX_RESET);
 xl_wait(sc);

 if (sc->xl_flags & XL_FLAG_INVERT_LED_PWR ||
     sc->xl_flags & XL_FLAG_INVERT_MII_PWR) {
  XL_SEL_WIN(2);
  CSR_WRITE_2(sc, XL_W2_RESET_OPTIONS,
      CSR_READ_2(sc, XL_W2_RESET_OPTIONS) |
      ((sc->xl_flags & XL_FLAG_INVERT_LED_PWR) ?
      XL_RESETOPT_INVERT_LED : 0) |
      ((sc->xl_flags & XL_FLAG_INVERT_MII_PWR) ?
      XL_RESETOPT_INVERT_MII : 0));
 }


 DELAY(100000);
}
