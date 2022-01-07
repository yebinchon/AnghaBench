
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct commit_list {struct commit_list* next; struct commit* item; } ;
struct TYPE_2__ {int flags; } ;
struct commit {struct commit_list* parents; TYPE_1__ object; } ;


 int COUNTED ;
 int TREESAME ;
 int UNINTERESTING ;

__attribute__((used)) static int count_distance(struct commit_list *entry)
{
 int nr = 0;

 while (entry) {
  struct commit *commit = entry->item;
  struct commit_list *p;

  if (commit->object.flags & (UNINTERESTING | COUNTED))
   break;
  if (!(commit->object.flags & TREESAME))
   nr++;
  commit->object.flags |= COUNTED;
  p = commit->parents;
  entry = p;
  if (p) {
   p = p->next;
   while (p) {
    nr += count_distance(p);
    p = p->next;
   }
  }
 }

 return nr;
}
