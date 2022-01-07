
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsm {scalar_t__ proto; scalar_t__ state; scalar_t__ open_mode; } ;
struct datalink {TYPE_1__* parent; } ;
struct TYPE_2__ {int object; int (* LayerFinish ) (int ,struct fsm*) ;} ;


 int CLOSE_NORMAL ;
 scalar_t__ OPEN_PASSIVE ;
 scalar_t__ PROTO_LCP ;
 scalar_t__ ST_CLOSED ;
 int datalink_ComeDown (struct datalink*,int ) ;
 int fsm2initial (struct fsm*) ;
 int fsm_Open (struct fsm*) ;
 int stub1 (int ,struct fsm*) ;

__attribute__((used)) static void
datalink_LayerFinish(void *v, struct fsm *fp)
{

  struct datalink *dl = (struct datalink *)v;

  if (fp->proto == PROTO_LCP) {
    fsm2initial(fp);
    (*dl->parent->LayerFinish)(dl->parent->object, fp);
    datalink_ComeDown(dl, CLOSE_NORMAL);
  } else if (fp->state == ST_CLOSED && fp->open_mode == OPEN_PASSIVE)
    fsm_Open(fp);
}
