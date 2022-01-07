
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int32_t ;



__attribute__((used)) static u_int8_t
ess_calcspeed8(int *spd)
{
 int speed = *spd;
 u_int32_t t;

 if (speed > 22000) {
  t = (795500 + speed / 2) / speed;
  speed = (795500 + t / 2) / t;
  t = (256 - t) | 0x80;
 } else {
  t = (397700 + speed / 2) / speed;
  speed = (397700 + t / 2) / t;
  t = 128 - t;
 }
 *spd = speed;
 return t & 0x000000ff;
}
