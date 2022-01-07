
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ speed; } ;
struct physical {TYPE_1__ cfg; } ;



int
physical_IsSync(struct physical *p)
{
   return p->cfg.speed == 0;
}
