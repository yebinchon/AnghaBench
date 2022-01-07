
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct z8530_softc {scalar_t__ txidle; } ;
struct uart_bas {int chan; } ;
struct uart_softc {int sc_hwsig; int sc_hwmtx; struct uart_bas sc_bas; } ;


 int BES_BRK ;
 int BES_CTS ;
 int BES_DCD ;
 int BES_SYNC ;
 int CR_RSTERR ;
 int CR_RSTIUS ;
 int CR_RSTTXI ;
 int CR_RSTXSI ;
 int IP_RIA ;
 int IP_SIA ;
 int IP_TIA ;



 int REG_CTRL ;
 int RR_BES ;
 int RR_IP ;
 int RR_IV ;
 int RR_SRC ;
 int SER_CTS ;
 int SER_DCD ;
 int SER_DCTS ;
 int SER_DDCD ;
 int SER_DDSR ;
 int SER_DSR ;
 int SER_INT_BREAK ;
 int SER_INT_OVERRUN ;
 int SER_INT_RXREADY ;
 int SER_INT_SIGCHG ;
 int SER_INT_TXIDLE ;
 int SER_MASK_DELTA ;
 int SIGCHG (int,int,int ,int ) ;
 int SRC_OVR ;
 int uart_barrier (struct uart_bas*) ;
 int uart_getmreg (struct uart_bas*,int ) ;
 int uart_lock (int ) ;
 int uart_setreg (struct uart_bas*,int ,int ) ;
 int uart_unlock (int ) ;

__attribute__((used)) static int
z8530_bus_ipend(struct uart_softc *sc)
{
 struct z8530_softc *z8530 = (struct z8530_softc*)sc;
 struct uart_bas *bas;
 int ipend;
 uint32_t sig;
 uint8_t bes, ip, iv, src;

 bas = &sc->sc_bas;
 ipend = 0;

 uart_lock(sc->sc_hwmtx);
 switch (bas->chan) {
 case 1:
  ip = uart_getmreg(bas, RR_IP);
  break;
 case 2:
  iv = uart_getmreg(bas, RR_IV) & 0x0E;
  switch (iv) {
  case 129: ip = IP_TIA; break;
  case 128: ip = IP_SIA; break;
  case 130: ip = IP_RIA; break;
  default: ip = 0; break;
  }
  break;
 default:
  ip = 0;
  break;
 }

 if (ip & IP_RIA)
  ipend |= SER_INT_RXREADY;

 if (ip & IP_TIA) {
  uart_setreg(bas, REG_CTRL, CR_RSTTXI);
  uart_barrier(bas);
  if (z8530->txidle) {
   ipend |= SER_INT_TXIDLE;
   z8530->txidle = 0;
  }
 }

 if (ip & IP_SIA) {
  uart_setreg(bas, REG_CTRL, CR_RSTXSI);
  uart_barrier(bas);
  bes = uart_getmreg(bas, RR_BES);
  if (bes & BES_BRK)
   ipend |= SER_INT_BREAK;
  sig = sc->sc_hwsig;
  SIGCHG(bes & BES_CTS, sig, SER_CTS, SER_DCTS);
  SIGCHG(bes & BES_DCD, sig, SER_DCD, SER_DDCD);
  SIGCHG(bes & BES_SYNC, sig, SER_DSR, SER_DDSR);
  if (sig & SER_MASK_DELTA)
   ipend |= SER_INT_SIGCHG;
  src = uart_getmreg(bas, RR_SRC);
  if (src & SRC_OVR) {
   uart_setreg(bas, REG_CTRL, CR_RSTERR);
   uart_barrier(bas);
   ipend |= SER_INT_OVERRUN;
  }
 }

 if (ipend) {
  uart_setreg(bas, REG_CTRL, CR_RSTIUS);
  uart_barrier(bas);
 }

 uart_unlock(sc->sc_hwmtx);

 return (ipend);
}
