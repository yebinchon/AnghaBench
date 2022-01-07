
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u_int ;
struct mk48txx_softc {int sc_flag; int sc_mtx; scalar_t__ sc_clkoffset; int (* sc_nvwr ) (void*,scalar_t__,int) ;} ;
typedef void* device_t ;


 scalar_t__ MK48TXX_WDOG ;
 int MK48TXX_WDOG_BMB_MASK ;
 int MK48TXX_WDOG_BMB_SHIFT ;
 int MK48TXX_WDOG_ENABLE_WDS ;
 int MK48TXX_WDOG_RB_1 ;
 int MK48TXX_WDOG_RB_1_16 ;
 int MK48TXX_WDOG_RB_1_4 ;
 int MK48TXX_WDOG_RB_4 ;
 int MK48TXX_WDOG_WDS ;
 int WD_INTERVAL ;
 scalar_t__ WD_TO_1SEC ;
 scalar_t__ WD_TO_250MS ;
 int WD_TO_2SEC ;
 int WD_TO_32SEC ;
 scalar_t__ WD_TO_4SEC ;
 int WD_TO_8SEC ;
 struct mk48txx_softc* device_get_softc (void*) ;
 int min (int,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int stub1 (void*,scalar_t__,int) ;

__attribute__((used)) static void
mk48txx_watchdog(void *arg, u_int cmd, int *error)
{
 device_t dev;
 struct mk48txx_softc *sc;
 uint8_t t, wdog;

 dev = arg;
 sc = device_get_softc(dev);

 t = cmd & WD_INTERVAL;
 if (t >= 26 && t <= 37) {
  wdog = 0;
  if (t <= WD_TO_2SEC) {
   wdog |= MK48TXX_WDOG_RB_1_16;
   t -= 26;
  } else if (t <= WD_TO_8SEC) {
   wdog |= MK48TXX_WDOG_RB_1_4;
   t -= WD_TO_250MS;
  } else if (t <= WD_TO_32SEC) {
   wdog |= MK48TXX_WDOG_RB_1;
   t -= WD_TO_1SEC;
  } else {
   wdog |= MK48TXX_WDOG_RB_4;
   t -= WD_TO_4SEC;
  }
  wdog |= (min(1 << t,
      MK48TXX_WDOG_BMB_MASK >> MK48TXX_WDOG_BMB_SHIFT)) <<
      MK48TXX_WDOG_BMB_SHIFT;
  if (sc->sc_flag & MK48TXX_WDOG_ENABLE_WDS)
   wdog |= MK48TXX_WDOG_WDS;
  *error = 0;
 } else {
  wdog = 0;
 }
 mtx_lock(&sc->sc_mtx);
 (*sc->sc_nvwr)(dev, sc->sc_clkoffset + MK48TXX_WDOG, wdog);
 mtx_unlock(&sc->sc_mtx);
}
