
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_softc {int lsr; int ier; int msr; scalar_t__ thre_int_pending; } ;


 int IER_EMSC ;
 int IER_ERLS ;
 int IER_ERXRDY ;
 int IER_ETXRDY ;
 int IIR_MLSC ;
 int IIR_NOPEND ;
 int IIR_RLS ;
 int IIR_RXTOUT ;
 int IIR_TXRDY ;
 int LSR_OE ;
 int MSR_DELTA_MASK ;
 scalar_t__ rxfifo_numchars (struct uart_softc*) ;

__attribute__((used)) static int
uart_intr_reason(struct uart_softc *sc)
{

 if ((sc->lsr & LSR_OE) != 0 && (sc->ier & IER_ERLS) != 0)
  return (IIR_RLS);
 else if (rxfifo_numchars(sc) > 0 && (sc->ier & IER_ERXRDY) != 0)
  return (IIR_RXTOUT);
 else if (sc->thre_int_pending && (sc->ier & IER_ETXRDY) != 0)
  return (IIR_TXRDY);
 else if ((sc->msr & MSR_DELTA_MASK) != 0 && (sc->ier & IER_EMSC) != 0)
  return (IIR_MLSC);
 else
  return (IIR_NOPEND);
}
