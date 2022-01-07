
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cir; } ;
struct hookinfo {int tc; int hook; int q_callout; TYPE_1__ conf; } ;


 int NG_HOOK_NODE (int ) ;
 int hz ;
 int ng_callout (int *,int ,int ,int,int *,int *,int ) ;
 int ng_car_q_event ;

__attribute__((used)) static void
ng_car_schedule(struct hookinfo *hinfo)
{
 int delay;

 delay = (-(hinfo->tc)) * hz * 8 / hinfo->conf.cir + 1;

 ng_callout(&hinfo->q_callout, NG_HOOK_NODE(hinfo->hook), hinfo->hook,
     delay, &ng_car_q_event, ((void*)0), 0);
}
