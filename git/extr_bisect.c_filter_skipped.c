
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct commit_list {struct commit_list* next; TYPE_2__* item; } ;
struct TYPE_7__ {int nr; } ;
struct TYPE_5__ {int oid; } ;
struct TYPE_6__ {TYPE_1__ object; } ;


 scalar_t__ oid_array_lookup (TYPE_3__*,int *) ;
 TYPE_3__ skipped_revs ;

struct commit_list *filter_skipped(struct commit_list *list,
       struct commit_list **tried,
       int show_all,
       int *count,
       int *skipped_first)
{
 struct commit_list *filtered = ((void*)0), **f = &filtered;

 *tried = ((void*)0);

 if (skipped_first)
  *skipped_first = 0;
 if (count)
  *count = 0;

 if (!skipped_revs.nr)
  return list;

 while (list) {
  struct commit_list *next = list->next;
  list->next = ((void*)0);
  if (0 <= oid_array_lookup(&skipped_revs, &list->item->object.oid)) {
   if (skipped_first && !*skipped_first)
    *skipped_first = 1;

   *tried = list;
   tried = &list->next;
  } else {
   if (!show_all) {
    if (!skipped_first || !*skipped_first)
     return list;
   } else if (skipped_first && !*skipped_first) {

    *skipped_first = -1;
   }

   *f = list;
   f = &list->next;
   if (count)
    (*count)++;
  }
  list = next;
 }

 if (skipped_first && *skipped_first == -1)
  *skipped_first = 0;

 return filtered;
}
