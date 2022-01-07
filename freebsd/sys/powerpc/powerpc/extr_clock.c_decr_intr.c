
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct trapframe {int dummy; } ;
struct decr_state {int mode; scalar_t__ div; } ;
typedef scalar_t__ int32_t ;
struct TYPE_3__ {int et_arg; int (* et_event_cb ) (TYPE_1__*,int ) ;scalar_t__ et_active; } ;


 struct decr_state* DPCPU_PTR (int ) ;
 int SPR_TSR ;
 int TSR_DIS ;
 size_t curcpu ;
 int ** decr_counts ;
 TYPE_1__ decr_et ;
 int decr_et_stop (int *) ;
 int decr_state ;
 int initialized ;
 int mtdec (scalar_t__) ;
 int mtspr (int ,int ) ;
 int stub1 (TYPE_1__*,int ) ;

void
decr_intr(struct trapframe *frame)
{
 struct decr_state *s = DPCPU_PTR(decr_state);
 int nticks = 0;
 int32_t val;

 if (!initialized)
  return;

 (*decr_counts[curcpu])++;
 if (s->mode == 1) {




  __asm ("mfdec %0" : "=r"(val));
  while (val < 0) {
   val += s->div;
   nticks++;
  }
  mtdec(val);
 } else if (s->mode == 2) {
  nticks = 1;
  decr_et_stop(((void*)0));
 } else if (s->mode == 0) {

  decr_et_stop(((void*)0));
 }

 while (nticks-- > 0) {
  if (decr_et.et_active)
   decr_et.et_event_cb(&decr_et, decr_et.et_arg);
 }
}
