
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct uart_bas {scalar_t__ chan; } ;
struct uart_softc {int sc_hwmtx; struct uart_bas sc_bas; } ;


 int QUICC_PRAM_SCC_RBASE (scalar_t__) ;
 int quicc_read2 (struct uart_bas*,int) ;
 int quicc_write2 (struct uart_bas*,int,int) ;
 int uart_lock (int ) ;
 int uart_unlock (int ) ;

__attribute__((used)) static void
quicc_bus_grab(struct uart_softc *sc)
{
 struct uart_bas *bas;
 uint16_t st, rb;


 bas = &sc->sc_bas;
 uart_lock(sc->sc_hwmtx);
 rb = quicc_read2(bas, QUICC_PRAM_SCC_RBASE(bas->chan - 1));
 st = quicc_read2(bas, rb);
 quicc_write2(bas, rb, st & ~0x9000);
 uart_unlock(sc->sc_hwmtx);
}
