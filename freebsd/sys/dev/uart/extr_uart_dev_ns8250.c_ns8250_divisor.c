
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UART_DEV_TOLERANCE_PCT ;

__attribute__((used)) static int
ns8250_divisor(int rclk, int baudrate)
{
 int actual_baud, divisor;
 int error;

 if (baudrate == 0)
  return (0);

 divisor = (rclk / (baudrate << 3) + 1) >> 1;
 if (divisor == 0 || divisor >= 65536)
  return (0);
 actual_baud = rclk / (divisor << 4);


 error = ((actual_baud - baudrate) * 2000 / baudrate + 1) >> 1;


 if (error < -UART_DEV_TOLERANCE_PCT || error > UART_DEV_TOLERANCE_PCT)
  return (0);

 return (divisor);
}
