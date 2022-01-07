
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct uart_bas {scalar_t__ chan; } ;


 int QUICC_PRAM_SCC_RBASE (scalar_t__) ;
 int quicc_read2 (struct uart_bas*,int) ;

__attribute__((used)) static int
quicc_rxready(struct uart_bas *bas)
{
 uint16_t rb;

 rb = quicc_read2(bas, QUICC_PRAM_SCC_RBASE(bas->chan - 1));
 return ((quicc_read2(bas, rb) & 0x8000) ? 0 : 1);
}
