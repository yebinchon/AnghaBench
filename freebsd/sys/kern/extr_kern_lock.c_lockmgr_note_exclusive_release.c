
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lock {int lock_object; int lk_recurse; } ;


 int LOCKSTAT_PROFILE_RELEASE_RWLOCK (int ,struct lock*,int ) ;
 int LOCKSTAT_WRITER ;
 int LOCK_LOG_LOCK (char*,int *,int ,int ,char const*,int) ;
 int LOP_EXCLUSIVE ;
 int TD_LOCKS_DEC (int ) ;
 int WITNESS_UNLOCK (int *,int ,char const*,int) ;
 int curthread ;
 int lockmgr__release ;

__attribute__((used)) static void
lockmgr_note_exclusive_release(struct lock *lk, const char *file, int line)
{

 LOCKSTAT_PROFILE_RELEASE_RWLOCK(lockmgr__release, lk, LOCKSTAT_WRITER);
 LOCK_LOG_LOCK("XUNLOCK", &lk->lock_object, 0, lk->lk_recurse, file,
     line);
 WITNESS_UNLOCK(&lk->lock_object, LOP_EXCLUSIVE, file, line);
 TD_LOCKS_DEC(curthread);
}
