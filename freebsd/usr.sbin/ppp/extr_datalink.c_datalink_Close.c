
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct datalink {int state; TYPE_2__* physical; int peer; } ;
struct TYPE_7__ {int fsm; } ;
struct TYPE_5__ {int fsm; } ;
struct TYPE_8__ {TYPE_3__ lcp; TYPE_1__ ccp; } ;
struct TYPE_6__ {TYPE_4__ link; } ;


 int CLOSE_LCP ;
 int CLOSE_STAYDOWN ;




 int datalink_AuthReInit (struct datalink*) ;
 int datalink_ComeDown (struct datalink*,int) ;
 int datalink_DontHangup (struct datalink*) ;
 int datalink_StayDown (struct datalink*) ;
 int fsm2initial (int *) ;
 int fsm_Close (int *) ;
 int peerid_Init (int *) ;

void
datalink_Close(struct datalink *dl, int how)
{

  switch (dl->state) {
    case 128:
      peerid_Init(&dl->peer);
      fsm2initial(&dl->physical->link.ccp.fsm);


    case 130:
    case 131:
    case 129:
      datalink_AuthReInit(dl);
      if (how == CLOSE_LCP)
        datalink_DontHangup(dl);
      else if (how == CLOSE_STAYDOWN)
        datalink_StayDown(dl);
      fsm_Close(&dl->physical->link.lcp.fsm);
      break;

    default:
      datalink_ComeDown(dl, how);
  }
}
