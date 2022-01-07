
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lockf_entry_list {int dummy; } ;
struct lockf_entry {scalar_t__ lf_start; } ;
struct lockf {int dummy; } ;
typedef scalar_t__ off_t ;


 int FALSE ;
 int KASSERT (int,char*) ;
 int LIST_REMOVE (struct lockf_entry*,int ) ;
 int lf_insert_lock (struct lockf*,struct lockf_entry*) ;
 int lf_link ;
 int lf_update_dependancies (struct lockf*,struct lockf_entry*,int ,struct lockf_entry_list*) ;

__attribute__((used)) static void
lf_set_start(struct lockf *state, struct lockf_entry *lock, off_t new_start,
 struct lockf_entry_list *granted)
{

 KASSERT(new_start >= lock->lf_start, ("can't increase lock"));
 lock->lf_start = new_start;
 LIST_REMOVE(lock, lf_link);
 lf_insert_lock(state, lock);
 lf_update_dependancies(state, lock, FALSE, granted);
}
