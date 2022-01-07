
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lockf_entry {scalar_t__ lf_type; } ;
struct lockf {int ls_active; } ;


 scalar_t__ F_UNLCK ;
 struct lockf_entry* LIST_FIRST (int *) ;
 struct lockf_entry* NOLOCKF ;
 int lf_activate_lock (struct lockf*,struct lockf_entry*) ;
 int lf_print (char*,struct lockf_entry*) ;
 int lockf_debug ;
 int panic (char*) ;

__attribute__((used)) static int
lf_clearlock(struct lockf *state, struct lockf_entry *unlock)
{
 struct lockf_entry *overlap;

 overlap = LIST_FIRST(&state->ls_active);

 if (overlap == NOLOCKF)
  return (0);







 lf_activate_lock(state, unlock);

 return (0);
}
