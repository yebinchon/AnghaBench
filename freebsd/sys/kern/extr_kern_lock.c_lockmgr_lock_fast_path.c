
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct lock_object {int dummy; } ;
struct lock_class {int (* lc_unlock ) (struct lock_object*) ;} ;
struct TYPE_2__ {int lo_flags; } ;
struct lock {int lk_lock; TYPE_1__ lock_object; } ;


 int LK_CAN_WITNESS (int) ;

 int LK_INTERLOCK ;
 int LK_NOSHARE ;
 int LK_PRIO_DEFAULT ;

 int LK_TIMO_DEFAULT ;

 int LK_TYPE_MASK ;
 int LK_UNLOCKED ;

 int LK_WMESG_DEFAULT ;
 struct lock_class* LOCK_CLASS (struct lock_object*) ;
 int LOP_EXCLUSIVE ;
 int LOP_NEWORDER ;
 int WITNESS_CHECKORDER (TYPE_1__*,int,char const*,int,struct lock_object*) ;
 int __lockmgr_args (struct lock*,int,struct lock_object*,int ,int ,int ,char const*,int) ;
 scalar_t__ __predict_false (int) ;
 scalar_t__ __predict_true (int) ;
 int atomic_cmpset_acq_ptr (int *,int ,uintptr_t) ;
 int curthread ;
 int lockmgr_note_exclusive_acquire (struct lock*,int ,int ,char const*,int,int) ;
 int lockmgr_note_shared_acquire (struct lock*,int ,int ,char const*,int,int) ;
 int lockmgr_slock_hard (struct lock*,int,struct lock_object*,char const*,int,int *) ;
 int lockmgr_slock_try (struct lock*,uintptr_t*,int,int) ;
 int lockmgr_upgrade (struct lock*,int,struct lock_object*,char const*,int,int *) ;
 int lockmgr_xlock_hard (struct lock*,int,struct lock_object*,char const*,int,int *) ;
 int * panicstr ;
 int stub1 (struct lock_object*) ;

int
lockmgr_lock_fast_path(struct lock *lk, u_int flags, struct lock_object *ilk,
    const char *file, int line)
{
 struct lock_class *class;
 uintptr_t x, tid;
 u_int op;
 bool locked;

 if (__predict_false(panicstr != ((void*)0)))
  return (0);

 op = flags & LK_TYPE_MASK;
 locked = 0;
 switch (op) {
 case 130:
  if (LK_CAN_WITNESS(flags))
   WITNESS_CHECKORDER(&lk->lock_object, LOP_NEWORDER,
       file, line, flags & LK_INTERLOCK ? ilk : ((void*)0));
  if (__predict_false(lk->lock_object.lo_flags & LK_NOSHARE))
   break;
  if (lockmgr_slock_try(lk, &x, flags, 1)) {
   lockmgr_note_shared_acquire(lk, 0, 0,
       file, line, flags);
   locked = 1;
  } else {
   return (lockmgr_slock_hard(lk, flags, ilk, file, line,
       ((void*)0)));
  }
  break;
 case 131:
  if (LK_CAN_WITNESS(flags))
   WITNESS_CHECKORDER(&lk->lock_object, LOP_NEWORDER |
       LOP_EXCLUSIVE, file, line, flags & LK_INTERLOCK ?
       ilk : ((void*)0));
  tid = (uintptr_t)curthread;
  if (lk->lk_lock == LK_UNLOCKED &&
      atomic_cmpset_acq_ptr(&lk->lk_lock, LK_UNLOCKED, tid)) {
   lockmgr_note_exclusive_acquire(lk, 0, 0, file, line,
       flags);
   locked = 1;
  } else {
   return (lockmgr_xlock_hard(lk, flags, ilk, file, line,
       ((void*)0)));
  }
  break;
 case 128:
 case 129:
  return (lockmgr_upgrade(lk, flags, ilk, file, line, ((void*)0)));
 default:
  break;
 }
 if (__predict_true(locked)) {
  if (__predict_false(flags & LK_INTERLOCK)) {
   class = LOCK_CLASS(ilk);
   class->lc_unlock(ilk);
  }
  return (0);
 } else {
  return (__lockmgr_args(lk, flags, ilk, LK_WMESG_DEFAULT,
      LK_PRIO_DEFAULT, LK_TIMO_DEFAULT, file, line));
 }
}
