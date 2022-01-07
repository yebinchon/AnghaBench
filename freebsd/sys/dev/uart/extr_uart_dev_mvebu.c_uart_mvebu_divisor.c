
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
uart_mvebu_divisor(int rclk, int baudrate)
{
 int divisor;

 if (baudrate == 0)
  return (0);

 divisor = (rclk >> 4) / baudrate;
 if (divisor <= 1 || divisor >= 1024)
  return (0);

 return (divisor);
}
