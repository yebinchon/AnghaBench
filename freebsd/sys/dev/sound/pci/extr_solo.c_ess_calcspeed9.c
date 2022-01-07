
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;


 scalar_t__ ABS (int) ;

__attribute__((used)) static u_int8_t
ess_calcspeed9(int *spd)
{
 int speed, s0, s1, use0;
 u_int8_t t0, t1;



 speed = *spd;
 t0 = 128 - (793800 / speed);
 s0 = 793800 / (128 - t0);

 t1 = 128 - (768000 / speed);
 s1 = 768000 / (128 - t1);
 t1 |= 0x80;

 use0 = (ABS(speed - s0) < ABS(speed - s1))? 1 : 0;

 *spd = use0? s0 : s1;
 return use0? t0 : t1;
}
