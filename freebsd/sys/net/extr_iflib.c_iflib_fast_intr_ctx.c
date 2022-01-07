
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct grouptask {int dummy; } ;
typedef TYPE_1__* iflib_filter_info_t ;
struct TYPE_2__ {int (* ifi_filter ) (int ) ;int ifi_filter_arg; struct grouptask* ifi_task; } ;


 int DBG_COUNTER_INC (int ) ;
 int FILTER_HANDLED ;
 int FILTER_SCHEDULE_THREAD ;
 int FILTER_STRAY ;
 int GROUPTASK_ENQUEUE (struct grouptask*) ;
 int fast_intrs ;
 int iflib_started ;
 int stub1 (int ) ;

__attribute__((used)) static int
iflib_fast_intr_ctx(void *arg)
{
 iflib_filter_info_t info = arg;
 struct grouptask *gtask = info->ifi_task;
 int result;

 if (!iflib_started)
  return (FILTER_STRAY);

 DBG_COUNTER_INC(fast_intrs);
 if (info->ifi_filter != ((void*)0)) {
  result = info->ifi_filter(info->ifi_filter_arg);
  if ((result & FILTER_SCHEDULE_THREAD) == 0)
   return (result);
 }

 GROUPTASK_ENQUEUE(gtask);
 return (FILTER_HANDLED);
}
