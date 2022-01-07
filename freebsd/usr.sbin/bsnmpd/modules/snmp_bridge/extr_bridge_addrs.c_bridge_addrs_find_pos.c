
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct tp_entry {scalar_t__ sysindex; } ;
struct tp_entries {int dummy; } ;


 struct tp_entry* TAILQ_FIRST (struct tp_entries*) ;
 struct tp_entry* TAILQ_LAST (struct tp_entries*,int ) ;
 struct tp_entry* TAILQ_NEXT (struct tp_entry*,int ) ;
 struct tp_entry* TAILQ_PREV (struct tp_entry*,int ,int ) ;
 scalar_t__ bridge_compare_sysidx (scalar_t__,scalar_t__) ;
 int tp_e ;
 int tp_entries ;

__attribute__((used)) static struct tp_entry *
bridge_addrs_find_pos(struct tp_entries *headp, uint32_t b_idx)
{
 uint32_t t_idx;
 struct tp_entry *t1;

 if ((t1 = TAILQ_FIRST(headp)) == ((void*)0) ||
     bridge_compare_sysidx(b_idx, t1->sysindex) < 0)
  return (((void*)0));

 t_idx = t1->sysindex;

 for (t1 = TAILQ_NEXT(t1, tp_e); t1 != ((void*)0); t1 = TAILQ_NEXT(t1, tp_e)) {

  if (t1->sysindex != t_idx) {
   if (bridge_compare_sysidx(b_idx, t1->sysindex) < 0)
    return (TAILQ_PREV(t1, tp_entries, tp_e));
   else
    t_idx = t1->sysindex;
  }
 }

 if (t1 == ((void*)0))
  t1 = TAILQ_LAST(headp, tp_entries);

 return (t1);
}
