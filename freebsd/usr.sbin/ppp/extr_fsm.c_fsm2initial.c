
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsm {scalar_t__ state; int StoppedTimer; int OpenTimer; int FsmTimer; } ;


 scalar_t__ ST_INITIAL ;
 scalar_t__ ST_STOPPED ;
 int fsm_Close (struct fsm*) ;
 int fsm_Down (struct fsm*) ;
 int timer_Stop (int *) ;

void
fsm2initial(struct fsm *fp)
{
  timer_Stop(&fp->FsmTimer);
  timer_Stop(&fp->OpenTimer);
  timer_Stop(&fp->StoppedTimer);
  if (fp->state == ST_STOPPED)
    fsm_Close(fp);
  if (fp->state > ST_INITIAL)
    fsm_Down(fp);
  if (fp->state > ST_INITIAL)
    fsm_Close(fp);
}
