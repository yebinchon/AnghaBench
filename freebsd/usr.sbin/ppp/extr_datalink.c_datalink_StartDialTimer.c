
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int load; char* name; struct datalink* arg; int func; } ;
struct TYPE_4__ {TYPE_2__ timer; } ;
struct datalink {scalar_t__ state; int name; TYPE_1__ dial; } ;


 scalar_t__ DATALINK_OPENING ;
 int DIAL_TIMEOUT ;
 int LogPHASE ;
 int SECTICKS ;
 int datalink_OpenTimeout ;
 int log_Printf (int ,char*,int ,int) ;
 int random () ;
 int timer_Start (TYPE_2__*) ;
 int timer_Stop (TYPE_2__*) ;

__attribute__((used)) static int
datalink_StartDialTimer(struct datalink *dl, int Timeout)
{
  int result = Timeout;

  timer_Stop(&dl->dial.timer);
  if (Timeout < 0)
    result = (random() % DIAL_TIMEOUT) + 1;
  dl->dial.timer.load = result ? result * SECTICKS : 1;
  dl->dial.timer.func = datalink_OpenTimeout;
  dl->dial.timer.name = "dial";
  dl->dial.timer.arg = dl;
  timer_Start(&dl->dial.timer);
  if (dl->state == DATALINK_OPENING)
    log_Printf(LogPHASE, "%s: Enter pause (%d) for redialing.\n",
               dl->name, result);
  return result;
}
