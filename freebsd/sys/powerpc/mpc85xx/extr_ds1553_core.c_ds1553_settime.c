
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct timespec {int tv_nsec; int tv_sec; } ;
struct ds1553_softc {int (* sc_read ) (int ,int ) ;int sc_mtx; int (* sc_write ) (int ,int ,int) ;scalar_t__ year_offset; } ;
struct clocktime {scalar_t__ year; scalar_t__ mon; scalar_t__ day; scalar_t__ dow; scalar_t__ hour; scalar_t__ min; scalar_t__ sec; } ;
typedef int device_t ;


 int DS1553_BIT_WRITE ;
 int DS1553_MASK_DATE ;
 int DS1553_MASK_DAYOFWEEK ;
 int DS1553_MASK_HOUR ;
 int DS1553_MASK_MINUTES ;
 int DS1553_MASK_MONTH ;
 int DS1553_MASK_SECONDS ;
 int DS1553_OFF_CONTROL ;
 int DS1553_OFF_DATE ;
 int DS1553_OFF_DAYOFWEEK ;
 int DS1553_OFF_HOURS ;
 int DS1553_OFF_MINUTES ;
 int DS1553_OFF_MONTH ;
 int DS1553_OFF_SECONDS ;
 int DS1553_OFF_YEAR ;
 int TOBCD (scalar_t__) ;
 int bzero (struct clocktime*,int) ;
 int clock_ts_to_ct (struct timespec*,struct clocktime*) ;
 struct ds1553_softc* device_get_softc (int ) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int stub1 (int ,int ) ;
 int stub10 (int ,int ,int) ;
 int stub2 (int ,int ,int) ;
 int stub3 (int ,int ,int) ;
 int stub4 (int ,int ,int) ;
 int stub5 (int ,int ,int) ;
 int stub6 (int ,int ,int) ;
 int stub7 (int ,int ,int) ;
 int stub8 (int ,int ,int) ;
 int stub9 (int ,int ,int) ;

int
ds1553_settime(device_t dev, struct timespec *ts)
{
 struct clocktime ct;
 struct ds1553_softc *sc;
 uint8_t control;

 sc = device_get_softc(dev);
 bzero(&ct, sizeof(struct clocktime));


 if (ts->tv_nsec >= 500000000)
  ts->tv_sec++;
 ts->tv_nsec = 0;
 clock_ts_to_ct(ts, &ct);

 ct.year -= sc->year_offset;

 mtx_lock_spin(&sc->sc_mtx);


 control = (*sc->sc_read)(dev, DS1553_OFF_CONTROL) | DS1553_BIT_WRITE;
 (*sc->sc_write)(dev, DS1553_OFF_CONTROL, control);

 (*sc->sc_write)(dev, DS1553_OFF_SECONDS, TOBCD(ct.sec) &
     DS1553_MASK_SECONDS);
 (*sc->sc_write)(dev, DS1553_OFF_MINUTES, TOBCD(ct.min) &
     DS1553_MASK_MINUTES);
 (*sc->sc_write)(dev, DS1553_OFF_HOURS, TOBCD(ct.hour) &
     DS1553_MASK_HOUR);
 (*sc->sc_write)(dev, DS1553_OFF_DAYOFWEEK, TOBCD(ct.dow + 1) &
     DS1553_MASK_DAYOFWEEK);
 (*sc->sc_write)(dev, DS1553_OFF_DATE, TOBCD(ct.day) &
     DS1553_MASK_DATE);
 (*sc->sc_write)(dev, DS1553_OFF_MONTH, TOBCD(ct.mon) &
     DS1553_MASK_MONTH);
 (*sc->sc_write)(dev, DS1553_OFF_YEAR, TOBCD(ct.year));


 control &= ~DS1553_BIT_WRITE;
 (*sc->sc_write)(dev, DS1553_OFF_CONTROL, control);

 mtx_unlock_spin(&sc->sc_mtx);

 return (0);
}
