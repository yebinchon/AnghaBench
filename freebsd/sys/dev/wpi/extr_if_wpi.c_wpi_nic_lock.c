
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpi_softc {int sc_dev; } ;


 int DELAY (int) ;
 int ETIMEDOUT ;
 int WPI_GP_CNTRL ;
 int WPI_GP_CNTRL_MAC_ACCESS_ENA ;
 int WPI_GP_CNTRL_MAC_ACCESS_REQ ;
 int WPI_GP_CNTRL_SLEEP ;
 int WPI_READ (struct wpi_softc*,int ) ;
 int WPI_SETBITS (struct wpi_softc*,int ,int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
wpi_nic_lock(struct wpi_softc *sc)
{
 int ntries;


 WPI_SETBITS(sc, WPI_GP_CNTRL, WPI_GP_CNTRL_MAC_ACCESS_REQ);


 for (ntries = 0; ntries < 1000; ntries++) {
  if ((WPI_READ(sc, WPI_GP_CNTRL) &
      (WPI_GP_CNTRL_MAC_ACCESS_ENA | WPI_GP_CNTRL_SLEEP)) ==
      WPI_GP_CNTRL_MAC_ACCESS_ENA)
   return 0;
  DELAY(10);
 }

 device_printf(sc->sc_dev, "could not lock memory\n");

 return ETIMEDOUT;
}
