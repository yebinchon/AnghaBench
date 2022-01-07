
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct physical {int dummy; } ;
struct TYPE_2__ {char* phone; int timer; scalar_t__ delay; scalar_t__ id; int state; } ;
struct cbcp {struct physical* p; TYPE_1__ fsm; scalar_t__ required; } ;


 int CBCP_CLOSED ;
 int memset (int *,char,int) ;

void
cbcp_Init(struct cbcp *cbcp, struct physical *p)
{
  cbcp->required = 0;
  cbcp->fsm.state = CBCP_CLOSED;
  cbcp->fsm.id = 0;
  cbcp->fsm.delay = 0;
  *cbcp->fsm.phone = '\0';
  memset(&cbcp->fsm.timer, '\0', sizeof cbcp->fsm.timer);
  cbcp->p = p;
}
