
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lockf_entry_list {int dummy; } ;
struct lockf_entry {scalar_t__ lf_end; } ;
struct lockf {int dummy; } ;
typedef scalar_t__ off_t ;


 int FALSE ;
 int KASSERT (int,char*) ;
 int lf_update_dependancies (struct lockf*,struct lockf_entry*,int ,struct lockf_entry_list*) ;

__attribute__((used)) static void
lf_set_end(struct lockf *state, struct lockf_entry *lock, off_t new_end,
 struct lockf_entry_list *granted)
{

 KASSERT(new_end <= lock->lf_end, ("can't increase lock"));
 lock->lf_end = new_end;
 lf_update_dependancies(state, lock, FALSE, granted);
}
