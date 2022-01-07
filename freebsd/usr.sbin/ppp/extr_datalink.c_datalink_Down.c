
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct datalink {int state; TYPE_4__* physical; int peer; } ;
struct TYPE_6__ {int fsm; } ;
struct TYPE_5__ {int fsm; } ;
struct TYPE_7__ {TYPE_2__ lcp; TYPE_1__ ccp; } ;
struct TYPE_8__ {TYPE_3__ link; } ;






 int DATALINK_OPENING ;
 int datalink_ComeDown (struct datalink*,int) ;
 int fsm2initial (int *) ;
 int peerid_Init (int *) ;

void
datalink_Down(struct datalink *dl, int how)
{

  switch (dl->state) {
    case 128:
      peerid_Init(&dl->peer);
      fsm2initial(&dl->physical->link.ccp.fsm);


    case 130:
    case 131:
    case 129:
      fsm2initial(&dl->physical->link.lcp.fsm);
      if (dl->state == DATALINK_OPENING)
        return;


    default:
      datalink_ComeDown(dl, how);
  }
}
