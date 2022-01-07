
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lockf_entry_list {int dummy; } ;
struct lockf_entry {scalar_t__ lf_type; int lf_end; int lf_start; } ;
struct lockf {struct lockf_entry_list ls_active; } ;


 scalar_t__ F_UNLCK ;
 int LIST_EMPTY (struct lockf_entry_list*) ;
 struct lockf_entry* LIST_FIRST (struct lockf_entry_list*) ;
 int LIST_INIT (struct lockf_entry_list*) ;
 int LIST_INSERT_HEAD (struct lockf_entry_list*,struct lockf_entry*,int ) ;
 struct lockf_entry* LIST_NEXT (struct lockf_entry*,int ) ;
 int LIST_REMOVE (struct lockf_entry*,int ) ;
 int SELF ;
 int TRUE ;
 int lf_findoverlap (struct lockf_entry**,struct lockf_entry*,int ) ;
 int lf_free_lock (struct lockf_entry*) ;
 int lf_insert_lock (struct lockf*,struct lockf_entry*) ;
 int lf_link ;
 int lf_print (char*,struct lockf_entry*) ;
 int lf_printlist (char*,struct lockf_entry*) ;
 int lf_set_end (struct lockf*,struct lockf_entry*,int ,struct lockf_entry_list*) ;
 int lf_set_start (struct lockf*,struct lockf_entry*,int ,struct lockf_entry_list*) ;
 int lf_split (struct lockf*,struct lockf_entry*,struct lockf_entry*,struct lockf_entry_list*) ;
 int lf_update_dependancies (struct lockf*,struct lockf_entry*,int ,struct lockf_entry_list*) ;
 int lockf_debug ;
 int printf (char*,int) ;

__attribute__((used)) static void
lf_activate_lock(struct lockf *state, struct lockf_entry *lock)
{
 struct lockf_entry *overlap, *lf;
 struct lockf_entry_list granted;
 int ovcase;

 LIST_INIT(&granted);
 LIST_INSERT_HEAD(&granted, lock, lf_link);

 while (!LIST_EMPTY(&granted)) {
  lock = LIST_FIRST(&granted);
  LIST_REMOVE(lock, lf_link);





  overlap = LIST_FIRST(&state->ls_active);
  for (;;) {
   ovcase = lf_findoverlap(&overlap, lock, SELF);
   switch (ovcase) {
   case 0:
    break;

   case 1:






    LIST_REMOVE(overlap, lf_link);
    lf_update_dependancies(state, overlap, TRUE,
     &granted);
    lf_free_lock(overlap);
    break;

   case 2:



    lf_split(state, overlap, lock, &granted);
    break;

   case 3:




    lf = LIST_NEXT(overlap, lf_link);
    LIST_REMOVE(overlap, lf_link);
    lf_update_dependancies(state, overlap, TRUE,
     &granted);
    lf_free_lock(overlap);
    overlap = lf;
    continue;

   case 4:




    lf_set_end(state, overlap, lock->lf_start - 1,
        &granted);
    overlap = LIST_NEXT(overlap, lf_link);
    continue;

   case 5:




    lf_set_start(state, overlap, lock->lf_end + 1,
        &granted);
    break;
   }
   break;
  }
  if (lock->lf_type != F_UNLCK)
   lf_insert_lock(state, lock);
 }
}
