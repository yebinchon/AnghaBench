
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UART_PPS_INVERT_PULSE ;
 int UART_PPS_NARROW_PULSE ;
 int UART_PPS_OPTION_MASK ;
 int UART_PPS_SIGNAL_MASK ;

__attribute__((used)) static inline int
uart_pps_mode_valid(int pps_mode)
{
 int opt;

 switch(pps_mode & UART_PPS_SIGNAL_MASK) {
 case 128:
 case 130:
 case 129:
  break;
 default:
  return (0);
 }

 opt = pps_mode & UART_PPS_OPTION_MASK;
 if ((opt & ~(UART_PPS_INVERT_PULSE | UART_PPS_NARROW_PULSE)) != 0)
  return (0);

 return (1);
}
