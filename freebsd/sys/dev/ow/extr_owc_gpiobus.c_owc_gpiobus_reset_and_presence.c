
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct owc_gpiobus_softc {int dummy; } ;
struct ow_timing {int t_pdl; scalar_t__ t_pdh; scalar_t__ t_rsth; scalar_t__ t_rstl; } ;
typedef int device_t ;


 int DELAY (scalar_t__) ;
 int EIO ;
 int GETBUS (struct owc_gpiobus_softc*) ;
 int GETPIN (struct owc_gpiobus_softc*,int*) ;
 int INPIN (struct owc_gpiobus_softc*) ;
 int LOW (struct owc_gpiobus_softc*) ;
 int OUTPIN (struct owc_gpiobus_softc*) ;
 int RELBUS (struct owc_gpiobus_softc*) ;
 int critical_enter () ;
 int critical_exit () ;
 struct owc_gpiobus_softc* device_get_softc (int ) ;

__attribute__((used)) static int
owc_gpiobus_reset_and_presence(device_t dev, struct ow_timing *t, int *bit)
{
 struct owc_gpiobus_softc *sc;
 int error;
 int buf = -1;

 sc = device_get_softc(dev);
 error = GETBUS(sc);
 if (error != 0)
  return (error);
 INPIN(sc);
 GETPIN(sc, &buf);
 if (buf == 0) {
  *bit = -1;
  RELBUS(sc);
  return (EIO);
 }

 critical_enter();


 OUTPIN(sc);
 LOW(sc);
 DELAY(t->t_rstl);


 INPIN(sc);
 DELAY(t->t_pdh + t->t_pdl / 2);


 GETPIN(sc, &buf);
 *bit = !!buf;

 critical_exit();

 DELAY(t->t_rsth - (t->t_pdh + t->t_pdl / 2));






 GETPIN(sc, &buf);
 if (buf == 0) {
  *bit = -1;
  RELBUS(sc);
  return (EIO);
 }

 RELBUS(sc);

 return (0);
}
