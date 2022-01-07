
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct owc_gpiobus_softc {int dummy; } ;
struct ow_timing {scalar_t__ t_rec; scalar_t__ t_low1; scalar_t__ t_slot; } ;
typedef int device_t ;


 int DELAY (scalar_t__) ;
 int GETBUS (struct owc_gpiobus_softc*) ;
 int INPIN (struct owc_gpiobus_softc*) ;
 int LOW (struct owc_gpiobus_softc*) ;
 int OUTPIN (struct owc_gpiobus_softc*) ;
 int RELBUS (struct owc_gpiobus_softc*) ;
 int critical_enter () ;
 int critical_exit () ;
 struct owc_gpiobus_softc* device_get_softc (int ) ;

__attribute__((used)) static int
owc_gpiobus_write_one(device_t dev, struct ow_timing *t)
{
 struct owc_gpiobus_softc *sc;
 int error;

 sc = device_get_softc(dev);
 error = GETBUS(sc);
 if (error != 0)
  return (error);

 critical_enter();


 OUTPIN(sc);
 LOW(sc);
 DELAY(t->t_low1);


 INPIN(sc);
 DELAY(t->t_slot - t->t_low1 + t->t_rec);

 critical_exit();

 RELBUS(sc);

 return (0);
}
