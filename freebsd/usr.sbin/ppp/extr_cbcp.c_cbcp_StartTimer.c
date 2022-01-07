
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {char* name; int load; struct cbcp* arg; int func; } ;
struct TYPE_4__ {TYPE_2__ timer; } ;
struct cbcp {TYPE_1__ fsm; } ;


 int SECTICKS ;
 int cbcp_Timeout ;
 int timer_Start (TYPE_2__*) ;
 int timer_Stop (TYPE_2__*) ;

__attribute__((used)) static void
cbcp_StartTimer(struct cbcp *cbcp, int timeout)
{
  timer_Stop(&cbcp->fsm.timer);
  cbcp->fsm.timer.func = cbcp_Timeout;
  cbcp->fsm.timer.name = "cbcp";
  cbcp->fsm.timer.load = timeout * SECTICKS;
  cbcp->fsm.timer.arg = cbcp;
  timer_Start(&cbcp->fsm.timer);
}
