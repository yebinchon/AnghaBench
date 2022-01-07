
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct lock {int lock_object; int lk_recurse; } ;


 int LK_TRYWIT (int) ;
 int LOCKSTAT_PROFILE_OBTAIN_RWLOCK_SUCCESS (int ,struct lock*,int,int ,char const*,int,int ) ;
 int LOCKSTAT_WRITER ;
 int LOCK_LOG_LOCK (char*,int *,int ,int ,char const*,int) ;
 int LOP_EXCLUSIVE ;
 int STACK_SAVE (struct lock*) ;
 int TD_LOCKS_INC (int ) ;
 int WITNESS_LOCK (int *,int,char const*,int) ;
 int curthread ;
 int lockmgr__acquire ;

__attribute__((used)) static void
lockmgr_note_exclusive_acquire(struct lock *lk, int contested,
    uint64_t waittime, const char *file, int line, int flags)
{

 LOCKSTAT_PROFILE_OBTAIN_RWLOCK_SUCCESS(lockmgr__acquire, lk, contested,
     waittime, file, line, LOCKSTAT_WRITER);
 LOCK_LOG_LOCK("XLOCK", &lk->lock_object, 0, lk->lk_recurse, file, line);
 WITNESS_LOCK(&lk->lock_object, LOP_EXCLUSIVE | LK_TRYWIT(flags), file,
     line);
 TD_LOCKS_INC(curthread);
 STACK_SAVE(lk);
}
