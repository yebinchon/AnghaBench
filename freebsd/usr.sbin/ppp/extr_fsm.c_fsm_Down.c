
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fsm {int state; TYPE_2__* parent; TYPE_1__* fn; } ;
struct TYPE_4__ {int object; int (* LayerDown ) (int ,struct fsm*) ;int (* LayerStart ) (int ,struct fsm*) ;int (* LayerFinish ) (int ,struct fsm*) ;} ;
struct TYPE_3__ {int (* LayerDown ) (struct fsm*) ;int (* LayerStart ) (struct fsm*) ;int (* LayerFinish ) (struct fsm*) ;} ;


 int NewState (struct fsm*,int ) ;




 int ST_INITIAL ;


 int ST_STARTING ;


 int stub1 (struct fsm*) ;
 int stub2 (int ,struct fsm*) ;
 int stub3 (struct fsm*) ;
 int stub4 (int ,struct fsm*) ;
 int stub5 (struct fsm*) ;
 int stub6 (int ,struct fsm*) ;

void
fsm_Down(struct fsm *fp)
{
  switch (fp->state) {
  case 133:
    NewState(fp, ST_INITIAL);
    break;
  case 132:

    (*fp->fn->LayerFinish)(fp);
    NewState(fp, ST_INITIAL);
    (*fp->parent->LayerFinish)(fp->parent->object, fp);
    break;
  case 129:
    NewState(fp, ST_STARTING);
    (*fp->fn->LayerStart)(fp);
    (*fp->parent->LayerStart)(fp->parent->object, fp);
    break;
  case 128:
  case 130:
  case 135:
  case 134:
    NewState(fp, ST_STARTING);
    break;
  case 131:
    (*fp->fn->LayerDown)(fp);
    NewState(fp, ST_STARTING);
    (*fp->parent->LayerDown)(fp->parent->object, fp);
    break;
  }
}
