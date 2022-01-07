
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct uart_bas {int chan; } ;


 int SAB_PVR ;
 int SAB_PVR_DTR_A ;
 int SAB_PVR_DTR_B ;
 int uart_barrier (struct uart_bas*) ;
 int uart_getreg (struct uart_bas*,int ) ;
 int uart_setreg (struct uart_bas*,int ,int ) ;

__attribute__((used)) static void
sab82532_term(struct uart_bas *bas)
{
 uint8_t pvr;

 pvr = uart_getreg(bas, SAB_PVR);
 switch (bas->chan) {
 case 1:
  pvr |= SAB_PVR_DTR_A;
  break;
 case 2:
  pvr |= SAB_PVR_DTR_B;
  break;
 }
 uart_setreg(bas, SAB_PVR, pvr);
 uart_barrier(bas);
}
