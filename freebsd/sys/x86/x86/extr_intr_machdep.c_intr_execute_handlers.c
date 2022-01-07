
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trapframe {int dummy; } ;
struct intsrc {scalar_t__* is_straycount; TYPE_1__* is_pic; struct intr_event* is_event; int * is_count; } ;
struct intr_event {int dummy; } ;
struct TYPE_2__ {int (* pic_vector ) (struct intsrc*) ;int (* pic_disable_source ) (struct intsrc*,int ) ;} ;


 int LOG_CRIT ;
 int LOG_ERR ;
 scalar_t__ MAX_STRAY_LOG ;
 int PIC_EOI ;
 int VM_CNT_INC (int ) ;
 int clkintr_pending ;
 scalar_t__ intr_event_handle (struct intr_event*,struct trapframe*) ;
 int log (int ,char*,int) ;
 int stub1 (struct intsrc*) ;
 int stub2 (struct intsrc*,int ) ;
 int v_intr ;

void
intr_execute_handlers(struct intsrc *isrc, struct trapframe *frame)
{
 struct intr_event *ie;
 int vector;







 (*isrc->is_count)++;
 VM_CNT_INC(v_intr);

 ie = isrc->is_event;





 vector = isrc->is_pic->pic_vector(isrc);
 if (vector == 0)
  clkintr_pending = 1;





 if (intr_event_handle(ie, frame) != 0) {
  isrc->is_pic->pic_disable_source(isrc, PIC_EOI);
  (*isrc->is_straycount)++;
  if (*isrc->is_straycount < MAX_STRAY_LOG)
   log(LOG_ERR, "stray irq%d\n", vector);
  else if (*isrc->is_straycount == MAX_STRAY_LOG)
   log(LOG_CRIT,
       "too many stray irq %d's: not logging anymore\n",
       vector);
 }
}
