
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct uart_softc {int lcr; int dll; int dlh; int ier; int fcr; int thre_int_pending; int mcr; int lsr; int msr; int scr; int mtx; } ;


 int FCR_ENABLE ;
 int IIR_FIFO_MASK ;
 int IIR_TXRDY ;
 int LCR_DLAB ;
 int LSR_OE ;
 int LSR_RXRDY ;
 int LSR_TEMT ;
 int LSR_THRE ;
 int MSR_DELTA_MASK ;

 int REG_DLH ;
 int REG_DLL ;







 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int rxfifo_getchar (struct uart_softc*) ;
 int rxfifo_numchars (struct uart_softc*) ;
 int uart_intr_reason (struct uart_softc*) ;
 int uart_toggle_intr (struct uart_softc*) ;

uint8_t
uart_read(struct uart_softc *sc, int offset)
{
 uint8_t iir, intr_reason, reg;

 pthread_mutex_lock(&sc->mtx);




 if ((sc->lcr & LCR_DLAB) != 0) {
  if (offset == REG_DLL) {
   reg = sc->dll;
   goto done;
  }

  if (offset == REG_DLH) {
   reg = sc->dlh;
   goto done;
  }
 }

 switch (offset) {
 case 135:
  reg = rxfifo_getchar(sc);
  break;
 case 134:
  reg = sc->ier;
  break;
 case 133:
  iir = (sc->fcr & FCR_ENABLE) ? IIR_FIFO_MASK : 0;

  intr_reason = uart_intr_reason(sc);




  if (intr_reason == IIR_TXRDY)
   sc->thre_int_pending = 0;

  iir |= intr_reason;

  reg = iir;
  break;
 case 132:
  reg = sc->lcr;
  break;
 case 130:
  reg = sc->mcr;
  break;
 case 131:

  sc->lsr |= LSR_TEMT | LSR_THRE;


  if (rxfifo_numchars(sc) > 0)
   sc->lsr |= LSR_RXRDY;
  else
   sc->lsr &= ~LSR_RXRDY;

  reg = sc->lsr;


  sc->lsr &= ~LSR_OE;
  break;
 case 129:



  reg = sc->msr;
  sc->msr &= ~MSR_DELTA_MASK;
  break;
 case 128:
  reg = sc->scr;
  break;
 default:
  reg = 0xFF;
  break;
 }

done:
 uart_toggle_intr(sc);
 pthread_mutex_unlock(&sc->mtx);

 return (reg);
}
