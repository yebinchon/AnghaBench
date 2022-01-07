
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct uart_bas {scalar_t__ chan; } ;
struct mtx {int dummy; } ;


 int DELAY (int) ;
 int QUICC_PRAM_SCC_RBASE (scalar_t__) ;
 int quicc_read2 (struct uart_bas*,int) ;
 scalar_t__ quicc_read4 (struct uart_bas*,int) ;
 int quicc_write2 (struct uart_bas*,int,int) ;
 int uart_lock (struct mtx*) ;
 int uart_unlock (struct mtx*) ;

__attribute__((used)) static int
quicc_getc(struct uart_bas *bas, struct mtx *hwmtx)
{
 volatile char *buf;
 int c;
 uint16_t rb, sc;

 uart_lock(hwmtx);

 rb = quicc_read2(bas, QUICC_PRAM_SCC_RBASE(bas->chan - 1));

 while ((sc = quicc_read2(bas, rb)) & 0x8000) {
  uart_unlock(hwmtx);
  DELAY(4);
  uart_lock(hwmtx);
 }

 buf = (void *)(uintptr_t)quicc_read4(bas, rb + 4);
 c = *buf;
 quicc_write2(bas, rb, sc | 0x8000);

 uart_unlock(hwmtx);

 return (c);
}
