
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eventtimer {int et_priv; } ;
struct attimer_softc {scalar_t__ period; int mode; } ;
typedef int device_t ;


 int MODE_STOP ;
 struct attimer_softc* device_get_softc (int ) ;
 int set_i8254_freq (int ,scalar_t__) ;

__attribute__((used)) static int
attimer_stop(struct eventtimer *et)
{
 device_t dev = (device_t)et->et_priv;
 struct attimer_softc *sc = device_get_softc(dev);

 sc->mode = MODE_STOP;
 sc->period = 0;
 set_i8254_freq(sc->mode, sc->period);
 return (0);
}
