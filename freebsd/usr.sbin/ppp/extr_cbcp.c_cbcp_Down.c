
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int timer; } ;
struct cbcp {scalar_t__ required; TYPE_1__ fsm; } ;


 int CBCP_CLOSED ;
 int cbcp_NewPhase (struct cbcp*,int ) ;
 int timer_Stop (int *) ;

void
cbcp_Down(struct cbcp *cbcp)
{
  timer_Stop(&cbcp->fsm.timer);
  cbcp_NewPhase(cbcp, CBCP_CLOSED);
  cbcp->required = 0;
}
