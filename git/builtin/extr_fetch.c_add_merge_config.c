
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct refspec_item {int src; } ;
struct ref {void* fetch_head_status; struct ref* next; int name; } ;
struct branch {int merge_nr; TYPE_1__** merge; } ;
typedef int refspec ;
struct TYPE_2__ {int src; } ;


 void* FETCH_HEAD_MERGE ;
 scalar_t__ branch_merge_matches (struct branch*,int,int ) ;
 int get_fetch_map (struct ref const*,struct refspec_item*,struct ref***,int) ;
 int memset (struct refspec_item*,int ,int) ;

__attribute__((used)) static void add_merge_config(struct ref **head,
      const struct ref *remote_refs,
             struct branch *branch,
             struct ref ***tail)
{
 int i;

 for (i = 0; i < branch->merge_nr; i++) {
  struct ref *rm, **old_tail = *tail;
  struct refspec_item refspec;

  for (rm = *head; rm; rm = rm->next) {
   if (branch_merge_matches(branch, i, rm->name)) {
    rm->fetch_head_status = FETCH_HEAD_MERGE;
    break;
   }
  }
  if (rm)
   continue;
  memset(&refspec, 0, sizeof(refspec));
  refspec.src = branch->merge[i]->src;
  get_fetch_map(remote_refs, &refspec, tail, 1);
  for (rm = *old_tail; rm; rm = rm->next)
   rm->fetch_head_status = FETCH_HEAD_MERGE;
 }
}
