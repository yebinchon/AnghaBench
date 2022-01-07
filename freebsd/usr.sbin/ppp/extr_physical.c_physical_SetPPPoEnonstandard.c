
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nonstandard_pppoe; int pppoe_configured; } ;
struct physical {TYPE_1__ cfg; } ;



int
physical_SetPPPoEnonstandard(struct physical *p, int enable)
{
   p->cfg.nonstandard_pppoe = enable ? 1 : 0;
   p->cfg.pppoe_configured = 1;
   return 1;
}
