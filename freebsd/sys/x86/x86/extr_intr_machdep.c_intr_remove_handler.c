
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intsrc {scalar_t__ is_handlers; TYPE_1__* is_pic; } ;
struct TYPE_2__ {int (* pic_disable_intr ) (struct intsrc*) ;int (* pic_disable_source ) (struct intsrc*,int ) ;} ;


 int PIC_NO_EOI ;
 int intr_event_remove_handler (void*) ;
 struct intsrc* intr_handler_source (void*) ;
 int intrcnt_updatename (struct intsrc*) ;
 int intrsrc_lock ;
 int stub1 (struct intsrc*,int ) ;
 int stub2 (struct intsrc*) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

int
intr_remove_handler(void *cookie)
{
 struct intsrc *isrc;
 int error;

 isrc = intr_handler_source(cookie);
 error = intr_event_remove_handler(cookie);
 if (error == 0) {
  sx_xlock(&intrsrc_lock);
  isrc->is_handlers--;
  if (isrc->is_handlers == 0) {
   isrc->is_pic->pic_disable_source(isrc, PIC_NO_EOI);
   isrc->is_pic->pic_disable_intr(isrc);
  }
  intrcnt_updatename(isrc);
  sx_xunlock(&intrsrc_lock);
 }
 return (error);
}
