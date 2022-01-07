
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {void* arg; int func; } ;
struct fsm {TYPE_1__* fn; TYPE_2__ FsmTimer; } ;
struct TYPE_3__ {int (* InitRestartCounter ) (struct fsm*,int) ;} ;


 int FsmTimeout ;
 int stub1 (struct fsm*,int) ;
 int timer_Stop (TYPE_2__*) ;

__attribute__((used)) static void
FsmInitRestartCounter(struct fsm *fp, int what)
{
  timer_Stop(&fp->FsmTimer);
  fp->FsmTimer.func = FsmTimeout;
  fp->FsmTimer.arg = (void *)fp;
  (*fp->fn->InitRestartCounter)(fp, what);
}
