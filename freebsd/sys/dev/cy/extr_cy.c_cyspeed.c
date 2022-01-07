
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int speed_t ;



__attribute__((used)) static int
cyspeed(speed_t speed, u_long cy_clock, int *prescaler_io)
{
 int actual;
 int error;
 int divider;
 int prescaler;
 int prescaler_unit;

 if (speed == 0)
  return (0);
 if (speed < 0 || speed > 150000)
  return (-1);


 for (prescaler_unit = 4, prescaler = 2048; prescaler_unit;
  prescaler_unit--, prescaler >>= 2) {
  if (cy_clock / prescaler / speed > 63)
   break;
 }

 divider = (cy_clock / prescaler * 2 / speed + 1) / 2;
 if (divider > 255)
  divider = 255;
 actual = cy_clock/prescaler/divider;


 error = ((actual - (long)speed) * 2000 / (long)speed + 1) / 2;


 if (error < -30 || error > 30)
  return (-1);

 *prescaler_io = prescaler_unit;
 return (divider);
}
