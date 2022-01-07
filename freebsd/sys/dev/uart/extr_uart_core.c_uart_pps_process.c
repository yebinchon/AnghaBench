
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_softc {int sc_pps_mode; scalar_t__ sc_pps_captime; int sc_pps; } ;
typedef scalar_t__ sbintime_t ;


 int PPS_CAPTUREASSERT ;
 int PPS_CAPTURECLEAR ;
 int SBT_1MS ;
 int SER_CTS ;
 int SER_DCD ;
 int SER_DELTA (int) ;


 int UART_PPS_INVERT_PULSE ;
 int UART_PPS_NARROW_PULSE ;
 int UART_PPS_SIGNAL_MASK ;
 scalar_t__ getsbinuptime () ;
 int pps_capture (int *) ;
 int pps_event (int *,int ) ;

__attribute__((used)) static void
uart_pps_process(struct uart_softc *sc, int ser_sig)
{
 sbintime_t now;
 int is_assert, pps_sig;


 switch(sc->sc_pps_mode & UART_PPS_SIGNAL_MASK) {
 case 129:
  pps_sig = SER_CTS;
  break;
 case 128:
  pps_sig = SER_DCD;
  break;
 default:
  return;
 }


 if ((ser_sig & SER_DELTA(pps_sig)) == 0)
  return;
 pps_capture(&sc->sc_pps);
 if (sc->sc_pps_mode & UART_PPS_NARROW_PULSE) {
  now = getsbinuptime();
  if (now > sc->sc_pps_captime + 500 * SBT_1MS) {
   sc->sc_pps_captime = now;
   pps_event(&sc->sc_pps, PPS_CAPTUREASSERT);
   pps_event(&sc->sc_pps, PPS_CAPTURECLEAR);
  }
 } else {
  is_assert = ser_sig & pps_sig;
  if (sc->sc_pps_mode & UART_PPS_INVERT_PULSE)
   is_assert = !is_assert;
  pps_event(&sc->sc_pps, is_assert ? PPS_CAPTUREASSERT :
      PPS_CAPTURECLEAR);
 }
}
