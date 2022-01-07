
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct fsm {scalar_t__ proto; } ;
struct TYPE_14__ {int authtimer; } ;
struct TYPE_15__ {TYPE_6__ auth; } ;
struct TYPE_13__ {int authtimer; } ;
struct TYPE_16__ {int required; } ;
struct datalink {int state; TYPE_7__ chap; TYPE_5__ pap; TYPE_8__ cbcp; TYPE_4__* parent; TYPE_3__* physical; int peer; } ;
struct TYPE_12__ {int object; int (* LayerDown ) (int ,struct fsm*) ;} ;
struct TYPE_9__ {int fsm; } ;
struct TYPE_10__ {TYPE_1__ ccp; } ;
struct TYPE_11__ {TYPE_2__ link; } ;




 int DATALINK_LCP ;

 scalar_t__ PROTO_LCP ;
 int cbcp_Down (TYPE_8__*) ;
 int datalink_AuthReInit (struct datalink*) ;
 int datalink_NewState (struct datalink*,int ) ;
 int fsm2initial (int *) ;
 int peerid_Init (int *) ;
 int stub1 (int ,struct fsm*) ;
 int timer_Stop (int *) ;

__attribute__((used)) static void
datalink_LayerDown(void *v, struct fsm *fp)
{

  struct datalink *dl = (struct datalink *)v;

  if (fp->proto == PROTO_LCP) {
    switch (dl->state) {
      case 128:
        peerid_Init(&dl->peer);
        fsm2initial(&dl->physical->link.ccp.fsm);
        datalink_NewState(dl, DATALINK_LCP);
        (*dl->parent->LayerDown)(dl->parent->object, fp);


      case 129:
        if (!dl->cbcp.required)
          cbcp_Down(&dl->cbcp);


      case 130:
        timer_Stop(&dl->pap.authtimer);
        timer_Stop(&dl->chap.auth.authtimer);
    }
    datalink_NewState(dl, DATALINK_LCP);
    datalink_AuthReInit(dl);
  }
}
