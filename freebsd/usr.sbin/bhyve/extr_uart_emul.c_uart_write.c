
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int opened; } ;
struct uart_softc {int lcr; int dll; int dlh; int mcr; int thre_int_pending; int ier; int fcr; int msr; int scr; int mtx; TYPE_1__ tty; int lsr; } ;


 int FCR_DMA ;
 int FCR_ENABLE ;
 int FCR_RCV_RST ;
 int FCR_RX_MASK ;
 int FIFOSZ ;
 int IER_ETXRDY ;
 int LCR_DLAB ;
 int LSR_OE ;
 int MCR_LOOPBACK ;
 int MSR_CTS ;
 int MSR_DCD ;
 int MSR_DCTS ;
 int MSR_DDCD ;
 int MSR_DDSR ;
 int MSR_DELTA_MASK ;
 int MSR_DSR ;
 int MSR_RI ;
 int MSR_TERI ;

 int REG_DLH ;
 int REG_DLL ;







 int modem_status (int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int rxfifo_putchar (struct uart_softc*,int) ;
 int rxfifo_reset (struct uart_softc*,int) ;
 int ttywrite (TYPE_1__*,int) ;
 int uart_toggle_intr (struct uart_softc*) ;

void
uart_write(struct uart_softc *sc, int offset, uint8_t value)
{
 int fifosz;
 uint8_t msr;

 pthread_mutex_lock(&sc->mtx);




 if ((sc->lcr & LCR_DLAB) != 0) {
  if (offset == REG_DLL) {
   sc->dll = value;
   goto done;
  }

  if (offset == REG_DLH) {
   sc->dlh = value;
   goto done;
  }
 }

        switch (offset) {
 case 135:
  if (sc->mcr & MCR_LOOPBACK) {
   if (rxfifo_putchar(sc, value) != 0)
    sc->lsr |= LSR_OE;
  } else if (sc->tty.opened) {
   ttywrite(&sc->tty, value);
  }
  sc->thre_int_pending = 1;
  break;
 case 133:

  if ((sc->ier & IER_ETXRDY) == 0 && (value & IER_ETXRDY) != 0)
   sc->thre_int_pending = 1;




  sc->ier = value & 0x0F;
  break;
 case 134:




  if ((sc->fcr & FCR_ENABLE) ^ (value & FCR_ENABLE)) {
   fifosz = (value & FCR_ENABLE) ? FIFOSZ : 1;
   rxfifo_reset(sc, fifosz);
  }





  if ((value & FCR_ENABLE) == 0) {
   sc->fcr = 0;
  } else {
   if ((value & FCR_RCV_RST) != 0)
    rxfifo_reset(sc, FIFOSZ);

   sc->fcr = value &
     (FCR_ENABLE | FCR_DMA | FCR_RX_MASK);
  }
  break;
 case 132:
  sc->lcr = value;
  break;
 case 130:

  sc->mcr = value & 0x1F;
  msr = modem_status(sc->mcr);






  if ((msr & MSR_CTS) ^ (sc->msr & MSR_CTS))
   sc->msr |= MSR_DCTS;
  if ((msr & MSR_DSR) ^ (sc->msr & MSR_DSR))
   sc->msr |= MSR_DDSR;
  if ((msr & MSR_DCD) ^ (sc->msr & MSR_DCD))
   sc->msr |= MSR_DDCD;
  if ((sc->msr & MSR_RI) != 0 && (msr & MSR_RI) == 0)
   sc->msr |= MSR_TERI;





  sc->msr &= MSR_DELTA_MASK;
  sc->msr |= msr;
  break;
 case 131:




  break;
 case 129:



  break;
 case 128:
  sc->scr = value;
  break;
 default:
  break;
 }

done:
 uart_toggle_intr(sc);
 pthread_mutex_unlock(&sc->mtx);
}
