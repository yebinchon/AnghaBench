
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
sab82532_divisor(int rclk, int baudrate)
{
 int act_baud, act_div, divisor;
 int error, m, n;

 if (baudrate == 0)
  return (0);

 divisor = (rclk / (baudrate << 3) + 1) >> 1;
 if (divisor < 2 || divisor >= 1048576)
  return (0);


 for (m = 1; m < 15; m++) {
  n = divisor / (1<<m);
  if (n < 1 || n > 63)
   continue;
  act_div = n * (1<<m);
  act_baud = rclk / (act_div << 4);


  error = ((act_baud - baudrate) * 2000 / baudrate + 1) >> 1;


  if (error < -30 || error > 30)
   continue;


  return ((n - 1) | (m << 6));
 }

 return (0);
}
