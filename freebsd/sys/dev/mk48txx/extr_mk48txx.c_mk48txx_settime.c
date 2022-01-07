
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct timespec {int tv_nsec; int tv_sec; } ;
struct mk48txx_softc {int sc_year0; int sc_flag; int sc_mtx; int (* sc_nvwr ) (int ,scalar_t__,int ) ;int (* sc_nvrd ) (int ,scalar_t__) ;scalar_t__ sc_clkoffset; } ;
struct clocktime {int sec; int min; int hour; int dow; int day; int mon; int year; } ;
typedef int device_t ;
typedef scalar_t__ bus_size_t ;


 int MK48TXX_CSR_WRITE ;
 int MK48TXX_DAY_MASK ;
 int MK48TXX_HOUR_MASK ;
 scalar_t__ MK48TXX_ICSR ;
 int MK48TXX_IDAY ;
 int MK48TXX_IHOUR ;
 int MK48TXX_IMIN ;
 int MK48TXX_IMON ;
 int MK48TXX_ISEC ;
 int MK48TXX_IWDAY ;
 int MK48TXX_IYEAR ;
 int MK48TXX_MIN_MASK ;
 int MK48TXX_MON_MASK ;
 int MK48TXX_NO_CENT_ADJUST ;
 int MK48TXX_SEC_MASK ;
 int MK48TXX_WDAY_CB ;
 int MK48TXX_WDAY_CB_SHIFT ;
 int MK48TXX_WDAY_MASK ;
 int MK48TXX_YEAR_MASK ;
 int TOBCD (int) ;
 int TOREG (int ,int ,int) ;
 int clock_ts_to_ct (struct timespec*,struct clocktime*) ;
 struct mk48txx_softc* device_get_softc (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int stub1 (int ,scalar_t__) ;
 int stub2 (int ,scalar_t__,int ) ;
 int stub3 (int ,scalar_t__) ;
 int stub4 (int ,scalar_t__,int ) ;

int
mk48txx_settime(device_t dev, struct timespec *ts)
{
 struct mk48txx_softc *sc;
 bus_size_t clkoff;
 struct clocktime ct;
 uint8_t csr;
 int cent, year;

 sc = device_get_softc(dev);
 clkoff = sc->sc_clkoffset;


 if (ts->tv_nsec >= 500000000)
  ts->tv_sec++;
 ts->tv_nsec = 0;
 clock_ts_to_ct(ts, &ct);

 mtx_lock(&sc->sc_mtx);

 csr = (*sc->sc_nvrd)(dev, clkoff + MK48TXX_ICSR);
 csr |= MK48TXX_CSR_WRITE;
 (*sc->sc_nvwr)(dev, clkoff + MK48TXX_ICSR, csr);






 ((*sc->sc_nvwr)(dev, clkoff + (MK48TXX_ISEC), ((*sc->sc_nvrd)(dev, clkoff + (MK48TXX_ISEC)) & ~(MK48TXX_SEC_MASK)) | ((TOBCD(ct.sec)) & (MK48TXX_SEC_MASK))));
 ((*sc->sc_nvwr)(dev, clkoff + (MK48TXX_IMIN), ((*sc->sc_nvrd)(dev, clkoff + (MK48TXX_IMIN)) & ~(MK48TXX_MIN_MASK)) | ((TOBCD(ct.min)) & (MK48TXX_MIN_MASK))));
 ((*sc->sc_nvwr)(dev, clkoff + (MK48TXX_IHOUR), ((*sc->sc_nvrd)(dev, clkoff + (MK48TXX_IHOUR)) & ~(MK48TXX_HOUR_MASK)) | ((TOBCD(ct.hour)) & (MK48TXX_HOUR_MASK))));

 ((*sc->sc_nvwr)(dev, clkoff + (MK48TXX_IWDAY), ((*sc->sc_nvrd)(dev, clkoff + (MK48TXX_IWDAY)) & ~(MK48TXX_WDAY_MASK)) | ((ct.dow + 1) & (MK48TXX_WDAY_MASK))));
 ((*sc->sc_nvwr)(dev, clkoff + (MK48TXX_IDAY), ((*sc->sc_nvrd)(dev, clkoff + (MK48TXX_IDAY)) & ~(MK48TXX_DAY_MASK)) | ((TOBCD(ct.day)) & (MK48TXX_DAY_MASK))));
 ((*sc->sc_nvwr)(dev, clkoff + (MK48TXX_IMON), ((*sc->sc_nvrd)(dev, clkoff + (MK48TXX_IMON)) & ~(MK48TXX_MON_MASK)) | ((TOBCD(ct.mon)) & (MK48TXX_MON_MASK))));

 year = ct.year - sc->sc_year0;
 if (sc->sc_flag & MK48TXX_NO_CENT_ADJUST) {
  cent = year / 100;
  ((*sc->sc_nvwr)(dev, clkoff + (MK48TXX_IWDAY), ((*sc->sc_nvrd)(dev, clkoff + (MK48TXX_IWDAY)) & ~(MK48TXX_WDAY_CB)) | ((cent << MK48TXX_WDAY_CB_SHIFT) & (MK48TXX_WDAY_CB))));

  year -= cent * 100;
 } else if (year > 99)
  year -= 100;
 ((*sc->sc_nvwr)(dev, clkoff + (MK48TXX_IYEAR), ((*sc->sc_nvrd)(dev, clkoff + (MK48TXX_IYEAR)) & ~(MK48TXX_YEAR_MASK)) | ((TOBCD(year)) & (MK48TXX_YEAR_MASK))));




 csr = (*sc->sc_nvrd)(dev, clkoff + MK48TXX_ICSR);
 csr &= ~MK48TXX_CSR_WRITE;
 (*sc->sc_nvwr)(dev, clkoff + MK48TXX_ICSR, csr);
 mtx_unlock(&sc->sc_mtx);
 return (0);
}
