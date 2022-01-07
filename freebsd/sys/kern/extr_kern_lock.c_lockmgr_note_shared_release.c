
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lock {int lock_object; } ;


 int LOCKSTAT_PROFILE_RELEASE_RWLOCK (int ,struct lock*,int ) ;
 int LOCKSTAT_READER ;
 int LOCK_LOG_LOCK (char*,int *,int ,int ,char const*,int) ;
 int TD_LOCKS_DEC (int ) ;
 int TD_SLOCKS_DEC (int ) ;
 int WITNESS_UNLOCK (int *,int ,char const*,int) ;
 int curthread ;
 int lockmgr__release ;

__attribute__((used)) static void
lockmgr_note_shared_release(struct lock *lk, const char *file, int line)
{

 LOCKSTAT_PROFILE_RELEASE_RWLOCK(lockmgr__release, lk, LOCKSTAT_READER);
 WITNESS_UNLOCK(&lk->lock_object, 0, file, line);
 LOCK_LOG_LOCK("SUNLOCK", &lk->lock_object, 0, 0, file, line);
 TD_LOCKS_DEC(curthread);
 TD_SLOCKS_DEC(curthread);
}
