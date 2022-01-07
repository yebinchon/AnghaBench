
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
z8530_divisor(int rclk, int baudrate)
{
 int act_baud, divisor, error;

 if (baudrate == 0)
  return (-1);

 divisor = (rclk + baudrate) / (baudrate << 1) - 2;
 if (divisor < 0 || divisor >= 65536)
  return (-1);
 act_baud = rclk / 2 / (divisor + 2);


 error = ((act_baud - baudrate) * 2000 / baudrate + 1) >> 1;


 if (error < -30 || error > 30)
  return (-1);

 return (divisor);
}
