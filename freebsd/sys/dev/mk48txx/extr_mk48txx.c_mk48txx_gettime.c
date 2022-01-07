
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct timespec {int dummy; } ;
struct mk48txx_softc {int sc_flag; int sc_mtx; int (* sc_nvwr ) (int ,scalar_t__,int ) ;int (* sc_nvrd ) (int ,scalar_t__) ;scalar_t__ sc_year0; scalar_t__ sc_clkoffset; } ;
struct clocktime {int dow; int year; void* mon; void* day; void* hour; void* min; void* sec; scalar_t__ nsec; } ;
typedef int device_t ;
typedef scalar_t__ bus_size_t ;


 void* FROMBCD (int) ;
 int FROMREG (int ,int ) ;
 int MK48TXX_CSR_READ ;
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
 int POSIX_BASE_YEAR ;
 int clock_ct_to_ts (struct clocktime*,struct timespec*) ;
 struct mk48txx_softc* device_get_softc (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int stub1 (int ,scalar_t__) ;
 int stub2 (int ,scalar_t__,int ) ;
 int stub3 (int ,scalar_t__) ;
 int stub4 (int ,scalar_t__,int ) ;

int
mk48txx_gettime(device_t dev, struct timespec *ts)
{
 struct mk48txx_softc *sc;
 bus_size_t clkoff;
 struct clocktime ct;
 int year;
 uint8_t csr;

 sc = device_get_softc(dev);
 clkoff = sc->sc_clkoffset;

 mtx_lock(&sc->sc_mtx);

 csr = (*sc->sc_nvrd)(dev, clkoff + MK48TXX_ICSR);
 csr |= MK48TXX_CSR_READ;
 (*sc->sc_nvwr)(dev, clkoff + MK48TXX_ICSR, csr);



 ct.nsec = 0;
 ct.sec = FROMBCD(((*sc->sc_nvrd)(dev, clkoff + (MK48TXX_ISEC)) & (MK48TXX_SEC_MASK)));
 ct.min = FROMBCD(((*sc->sc_nvrd)(dev, clkoff + (MK48TXX_IMIN)) & (MK48TXX_MIN_MASK)));
 ct.hour = FROMBCD(((*sc->sc_nvrd)(dev, clkoff + (MK48TXX_IHOUR)) & (MK48TXX_HOUR_MASK)));
 ct.day = FROMBCD(((*sc->sc_nvrd)(dev, clkoff + (MK48TXX_IDAY)) & (MK48TXX_DAY_MASK)));
 ct.dow = -1;

 ct.mon = FROMBCD(((*sc->sc_nvrd)(dev, clkoff + (MK48TXX_IMON)) & (MK48TXX_MON_MASK)));
 year = FROMBCD(((*sc->sc_nvrd)(dev, clkoff + (MK48TXX_IYEAR)) & (MK48TXX_YEAR_MASK)));
 year += sc->sc_year0;
 if (sc->sc_flag & MK48TXX_NO_CENT_ADJUST)
  year += (((*sc->sc_nvrd)(dev, clkoff + (MK48TXX_IWDAY)) & (MK48TXX_WDAY_CB)) >>
      MK48TXX_WDAY_CB_SHIFT) * 100;
 else if (year < POSIX_BASE_YEAR)
  year += 100;



 ct.year = year;


 csr = (*sc->sc_nvrd)(dev, clkoff + MK48TXX_ICSR);
 csr &= ~MK48TXX_CSR_READ;
 (*sc->sc_nvwr)(dev, clkoff + MK48TXX_ICSR, csr);
 mtx_unlock(&sc->sc_mtx);

 return (clock_ct_to_ts(&ct, ts));
}
