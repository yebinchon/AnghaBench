
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rl_q_entry {int rl_q_flags; scalar_t__ rl_q_start; scalar_t__ rl_q_end; } ;
struct rangelock {int dummy; } ;
struct mtx {int dummy; } ;
typedef scalar_t__ off_t ;


 int KASSERT (int,char*) ;
 int MPASS (int) ;
 int RL_LOCK_GRANTED ;
 int mtx_lock (struct mtx*) ;
 int mtx_unlock (struct mtx*) ;
 int rangelock_calc_block (struct rangelock*) ;
 int rangelock_unlock_locked (struct rangelock*,void*,struct mtx*,int) ;

void *
rangelock_unlock_range(struct rangelock *lock, void *cookie, off_t start,
    off_t end, struct mtx *ilk)
{
 struct rl_q_entry *entry;

 MPASS(lock != ((void*)0) && cookie != ((void*)0) && ilk != ((void*)0));
 entry = cookie;
 KASSERT(entry->rl_q_flags & RL_LOCK_GRANTED,
     ("Unlocking non-granted lock"));
 KASSERT(entry->rl_q_start == start, ("wrong start"));
 KASSERT(entry->rl_q_end >= end, ("wrong end"));

 mtx_lock(ilk);
 if (entry->rl_q_end == end) {
  rangelock_unlock_locked(lock, cookie, ilk, 1);
  return (((void*)0));
 }
 entry->rl_q_end = end;
 rangelock_calc_block(lock);
 mtx_unlock(ilk);
 return (cookie);
}
