
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct speeds {int nspeed; scalar_t__ speed; } ;
typedef scalar_t__ speed_t ;


 struct speeds* speeds ;

unsigned
SpeedToUnsigned(speed_t speed)
{
  const struct speeds *sp;

  for (sp = speeds; sp->nspeed; sp++) {
    if (sp->speed == speed) {
      return sp->nspeed;
    }
  }
  return 0;
}
