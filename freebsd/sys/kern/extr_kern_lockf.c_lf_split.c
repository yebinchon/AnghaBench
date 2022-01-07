
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lockf_entry_list {int dummy; } ;
struct lockf_entry {scalar_t__ lf_start; scalar_t__ lf_end; int lf_refs; int lf_flags; int lf_inedges; int lf_outedges; int lf_vnode; int lf_owner; } ;
struct lockf {int dummy; } ;


 int F_REMOTE ;
 int LIST_INIT (int *) ;
 int lf_add_incoming (struct lockf*,struct lockf_entry*) ;
 struct lockf_entry* lf_alloc_lock (int ) ;
 int lf_insert_lock (struct lockf*,struct lockf_entry*) ;
 int lf_print (char*,struct lockf_entry*) ;
 int lf_set_end (struct lockf*,struct lockf_entry*,scalar_t__,struct lockf_entry_list*) ;
 int lf_set_start (struct lockf*,struct lockf_entry*,scalar_t__,struct lockf_entry_list*) ;
 int lockf_debug ;
 int memcpy (struct lockf_entry*,struct lockf_entry*,int) ;
 int vref (int ) ;

__attribute__((used)) static void
lf_split(struct lockf *state, struct lockf_entry *lock1,
    struct lockf_entry *lock2, struct lockf_entry_list *granted)
{
 struct lockf_entry *splitlock;
 if (lock1->lf_start == lock2->lf_start) {
  lf_set_start(state, lock1, lock2->lf_end + 1, granted);
  return;
 }
 if (lock1->lf_end == lock2->lf_end) {
  lf_set_end(state, lock1, lock2->lf_start - 1, granted);
  return;
 }




 splitlock = lf_alloc_lock(lock1->lf_owner);
 memcpy(splitlock, lock1, sizeof *splitlock);
 splitlock->lf_refs = 1;
 if (splitlock->lf_flags & F_REMOTE)
  vref(splitlock->lf_vnode);
 splitlock->lf_start = lock2->lf_end + 1;
 LIST_INIT(&splitlock->lf_outedges);
 LIST_INIT(&splitlock->lf_inedges);
 lf_add_incoming(state, splitlock);

 lf_set_end(state, lock1, lock2->lf_start - 1, granted);




 lf_insert_lock(state, splitlock);
}
