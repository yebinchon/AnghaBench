
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct witness {scalar_t__ w_refcount; scalar_t__ w_line; int * w_file; TYPE_1__* w_class; } ;
struct TYPE_2__ {int lc_flags; } ;


 int LC_SLEEPLOCK ;
 int MPASS (int) ;
 int w_sleep_cnt ;
 int w_spin_cnt ;
 int witness_increment_graph_generation () ;

__attribute__((used)) static void
depart(struct witness *w)
{

 MPASS(w->w_refcount == 0);
 if (w->w_class->lc_flags & LC_SLEEPLOCK) {
  w_sleep_cnt--;
 } else {
  w_spin_cnt--;
 }



 w->w_file = ((void*)0);
 w->w_line = 0;
 witness_increment_graph_generation();
}
