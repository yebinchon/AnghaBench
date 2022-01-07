
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct speeds {unsigned int nspeed; int speed; } ;
typedef int speed_t ;


 int B0 ;
 struct speeds* speeds ;

speed_t
UnsignedToSpeed(unsigned nspeed)
{
  const struct speeds *sp;

  for (sp = speeds; sp->nspeed; sp++) {
    if (sp->nspeed == nspeed) {
      return sp->speed;
    }
  }
  return B0;
}
