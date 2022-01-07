
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rts_cts; } ;
struct physical {TYPE_1__ cfg; } ;



int
physical_SetRtsCts(struct physical *p, int enable)
{
   p->cfg.rts_cts = enable ? 1 : 0;
   return 1;
}
