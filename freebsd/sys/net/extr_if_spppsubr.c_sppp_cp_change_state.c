
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int timeout; } ;
struct sppp {int* state; TYPE_1__ lcp; int * ch; } ;
struct cp {size_t protoidx; int TO; } ;
 int callout_reset (int *,int ,int ,void*) ;
 int callout_stop (int *) ;

__attribute__((used)) static void
sppp_cp_change_state(const struct cp *cp, struct sppp *sp, int newstate)
{
 sp->state[cp->protoidx] = newstate;

 callout_stop (&sp->ch[cp->protoidx]);

 switch (newstate) {
 case 133:
 case 130:
 case 135:
 case 129:
 case 132:
  break;
 case 134:
 case 128:
 case 131:
 case 137:
 case 136:
  callout_reset(&sp->ch[cp->protoidx], sp->lcp.timeout,
         cp->TO, (void *)sp);
  break;
 }
}
