
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct lock_object {int dummy; } ;
struct lock_class {int (* lc_unlock ) (struct lock_object*) ;} ;


 int LK_INTERLOCK ;
 struct lock_class* LOCK_CLASS (struct lock_object*) ;
 scalar_t__ __predict_false (int) ;
 int kick_proc0 () ;
 int stub1 (struct lock_object*) ;

__attribute__((used)) static void
lockmgr_exit(u_int flags, struct lock_object *ilk, int wakeup_swapper)
{
 struct lock_class *class;

 if (flags & LK_INTERLOCK) {
  class = LOCK_CLASS(ilk);
  class->lc_unlock(ilk);
 }

 if (__predict_false(wakeup_swapper))
  kick_proc0();
}
