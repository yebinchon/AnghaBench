
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rl_q_entry {int rl_q_flags; } ;
struct rangelock {struct rl_q_entry* rl_currdep; int rl_waiters; } ;


 int RL_LOCK_GRANTED ;
 int RL_LOCK_READ ;
 struct rl_q_entry* TAILQ_FIRST (int *) ;
 int TAILQ_INSERT_HEAD (int *,struct rl_q_entry*,int ) ;
 struct rl_q_entry* TAILQ_NEXT (struct rl_q_entry*,int ) ;
 int TAILQ_REMOVE (int *,struct rl_q_entry*,int ) ;
 scalar_t__ ranges_overlap (struct rl_q_entry*,struct rl_q_entry*) ;
 int rl_q_link ;
 int wakeup (struct rl_q_entry*) ;

__attribute__((used)) static void
rangelock_calc_block(struct rangelock *lock)
{
 struct rl_q_entry *entry, *nextentry, *entry1;

 for (entry = lock->rl_currdep; entry != ((void*)0); entry = nextentry) {
  nextentry = TAILQ_NEXT(entry, rl_q_link);
  if (entry->rl_q_flags & RL_LOCK_READ) {

   for (entry1 = TAILQ_FIRST(&lock->rl_waiters);
       !(entry1->rl_q_flags & RL_LOCK_READ);
       entry1 = TAILQ_NEXT(entry1, rl_q_link)) {
    if (ranges_overlap(entry, entry1))
     goto out;
   }
  } else {

   for (entry1 = TAILQ_FIRST(&lock->rl_waiters);
       entry1 != entry;
       entry1 = TAILQ_NEXT(entry1, rl_q_link)) {
    if (ranges_overlap(entry, entry1))
     goto out;
   }


   TAILQ_REMOVE(&lock->rl_waiters, entry, rl_q_link);
   TAILQ_INSERT_HEAD(&lock->rl_waiters, entry, rl_q_link);
  }


  entry->rl_q_flags |= RL_LOCK_GRANTED;
  wakeup(entry);
 }
out:
 lock->rl_currdep = entry;
}
