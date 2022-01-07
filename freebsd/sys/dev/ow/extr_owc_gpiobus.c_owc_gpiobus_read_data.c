
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct owc_gpiobus_softc {int dummy; } ;
struct ow_timing {int t_rdv; int t_slot; int t_rec; int t_lowr; } ;
typedef int sbintime_t ;
typedef int device_t ;


 int DELAY (int ) ;
 int GETBUS (struct owc_gpiobus_softc*) ;
 int GETPIN (struct owc_gpiobus_softc*,int*) ;
 int INPIN (struct owc_gpiobus_softc*) ;
 int LOW (struct owc_gpiobus_softc*) ;
 int OUTPIN (struct owc_gpiobus_softc*) ;
 int RELBUS (struct owc_gpiobus_softc*) ;
 int SBT_1US ;
 int critical_enter () ;
 int critical_exit () ;
 struct owc_gpiobus_softc* device_get_softc (int ) ;
 int sbinuptime () ;

__attribute__((used)) static int
owc_gpiobus_read_data(device_t dev, struct ow_timing *t, int *bit)
{
 struct owc_gpiobus_softc *sc;
 int error, sample;
 sbintime_t then, now;

 sc = device_get_softc(dev);
 error = GETBUS(sc);
 if (error != 0)
  return (error);

 critical_enter();


 then = sbinuptime();
 OUTPIN(sc);
 LOW(sc);
 DELAY(t->t_lowr);






 INPIN(sc);
 do {
  now = sbinuptime();
  GETPIN(sc, &sample);
 } while (now - then < (t->t_rdv + 2) * SBT_1US && sample == 0);
 critical_exit();

 if (now - then < t->t_rdv * SBT_1US)
  *bit = 1;
 else
  *bit = 0;


 do {
  now = sbinuptime();
 } while (now - then < (t->t_slot + t->t_rec) * SBT_1US);

 RELBUS(sc);

 return (error);
}
