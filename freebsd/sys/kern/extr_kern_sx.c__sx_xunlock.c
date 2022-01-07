
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sx {scalar_t__ sx_lock; int sx_recurse; int lock_object; } ;


 int KASSERT (int,char*) ;
 int LOCK_LOG_LOCK (char*,int *,int ,int ,char const*,int) ;
 int LOP_EXCLUSIVE ;
 int SA_XLOCKED ;
 scalar_t__ SX_LOCK_DESTROYED ;
 int TD_LOCKS_DEC (scalar_t__) ;
 int WITNESS_UNLOCK (int *,int ,char const*,int) ;
 int __sx_xunlock (struct sx*,scalar_t__,char const*,int) ;
 int _sx_assert (struct sx*,int ,char const*,int) ;
 int _sx_xunlock_hard (struct sx*,uintptr_t,char const*,int) ;
 scalar_t__ curthread ;

void
_sx_xunlock(struct sx *sx, const char *file, int line)
{

 KASSERT(sx->sx_lock != SX_LOCK_DESTROYED,
     ("sx_xunlock() of destroyed sx @ %s:%d", file, line));
 _sx_assert(sx, SA_XLOCKED, file, line);
 WITNESS_UNLOCK(&sx->lock_object, LOP_EXCLUSIVE, file, line);
 LOCK_LOG_LOCK("XUNLOCK", &sx->lock_object, 0, sx->sx_recurse, file,
     line);



 __sx_xunlock(sx, curthread, file, line);

 TD_LOCKS_DEC(curthread);
}
