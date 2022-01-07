
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct uart_bas {scalar_t__ chan; } ;
struct uart_softc {char* sc_txbuf; int sc_txbusy; int sc_hwmtx; struct uart_bas sc_bas; } ;


 int QUICC_PRAM_SCC_TBASE (scalar_t__) ;
 int quicc_read2 (struct uart_bas*,int) ;
 scalar_t__ quicc_read4 (struct uart_bas*,int) ;
 int quicc_write2 (struct uart_bas*,int,int) ;
 int uart_lock (int ) ;
 int uart_unlock (int ) ;

__attribute__((used)) static int
quicc_bus_transmit(struct uart_softc *sc)
{
 volatile char *buf;
 struct uart_bas *bas;
 uint16_t st, tb;

 bas = &sc->sc_bas;
 uart_lock(sc->sc_hwmtx);
 tb = quicc_read2(bas, QUICC_PRAM_SCC_TBASE(bas->chan - 1));
 st = quicc_read2(bas, tb);
 buf = (void *)(uintptr_t)quicc_read4(bas, tb + 4);
 *buf = sc->sc_txbuf[0];
 quicc_write2(bas, tb + 2, 1);
 quicc_write2(bas, tb, st | 0x9000);
 sc->sc_txbusy = 1;
 uart_unlock(sc->sc_hwmtx);
 return (0);
}
