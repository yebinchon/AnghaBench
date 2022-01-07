
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct uart_bas {scalar_t__ chan; int rclk; } ;


 int EINVAL ;
 int QUICC_REG_BRG (scalar_t__) ;
 int QUICC_REG_SCC_PSMR (scalar_t__) ;





 int quicc_divisor (int ,int) ;
 int quicc_write2 (struct uart_bas*,int ,int) ;
 int quicc_write4 (struct uart_bas*,int ,int) ;

__attribute__((used)) static int
quicc_param(struct uart_bas *bas, int baudrate, int databits, int stopbits,
    int parity)
{
 int divisor;
 uint16_t psmr;

 if (baudrate > 0) {
  divisor = quicc_divisor(bas->rclk, baudrate);
  if (divisor == -1)
   return (EINVAL);
  quicc_write4(bas, QUICC_REG_BRG(bas->chan - 1),
      divisor | 0x10000);
 }

 psmr = 0;
 switch (databits) {
 case 5: psmr |= 0x0000; break;
 case 6: psmr |= 0x1000; break;
 case 7: psmr |= 0x2000; break;
 case 8: psmr |= 0x3000; break;
 default: return (EINVAL);
 }
 switch (stopbits) {
 case 1: psmr |= 0x0000; break;
 case 2: psmr |= 0x4000; break;
 default: return (EINVAL);
 }
 switch (parity) {
 case 132: psmr |= 0x1a; break;
 case 131: psmr |= 0x1f; break;
 case 130: psmr |= 0x00; break;
 case 129: psmr |= 0x10; break;
 case 128: psmr |= 0x15; break;
 default: return (EINVAL);
 }
 quicc_write2(bas, QUICC_REG_SCC_PSMR(bas->chan - 1), psmr);
 return (0);
}
