
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int speed; } ;
struct physical {TYPE_1__ cfg; } ;


 scalar_t__ B0 ;
 scalar_t__ UnsignedToSpeed (unsigned int) ;

int
physical_SetSpeed(struct physical *p, unsigned speed)
{
  if (UnsignedToSpeed(speed) != B0) {
      p->cfg.speed = speed;
      return 1;
  }

  return 0;
}
