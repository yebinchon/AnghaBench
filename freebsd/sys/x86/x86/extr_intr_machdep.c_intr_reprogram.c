
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct intsrc {TYPE_1__* is_pic; } ;
struct TYPE_2__ {int (* pic_reprogram_pin ) (struct intsrc*) ;} ;


 struct intsrc** interrupt_sources ;
 int intrsrc_lock ;
 size_t num_io_irqs ;
 int stub1 (struct intsrc*) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

void
intr_reprogram(void)
{
 struct intsrc *is;
 u_int v;

 sx_xlock(&intrsrc_lock);
 for (v = 0; v < num_io_irqs; v++) {
  is = interrupt_sources[v];
  if (is == ((void*)0))
   continue;
  if (is->is_pic->pic_reprogram_pin != ((void*)0))
   is->is_pic->pic_reprogram_pin(is);
 }
 sx_xunlock(&intrsrc_lock);
}
