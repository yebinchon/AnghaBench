
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sec_softc {int sc_dev; } ;


 int DELAY (int) ;
 int ETIMEDOUT ;
 int SEC_MCR ;
 int SEC_MCR_SWR ;
 int SEC_READ (struct sec_softc*,int ) ;
 int SEC_TIMEOUT ;
 int SEC_WRITE (struct sec_softc*,int ,int) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
sec_controller_reset(struct sec_softc *sc)
{
 int timeout = SEC_TIMEOUT;


 SEC_WRITE(sc, SEC_MCR, SEC_MCR_SWR);

 while (SEC_READ(sc, SEC_MCR) & SEC_MCR_SWR) {
  DELAY(1000);
  timeout -= 1000;

  if (timeout < 0) {
   device_printf(sc->sc_dev, "timeout while waiting for "
       "device reset!\n");
   return (ETIMEDOUT);
  }
 }

 return (0);
}
