
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct commit_list {struct commit* item; struct commit_list* next; } ;
struct TYPE_2__ {unsigned int flags; } ;
struct commit {TYPE_1__ object; struct commit_list* parents; } ;


 unsigned int TREESAME ;
 int UNINTERESTING ;
 struct commit_list* best_bisection (struct commit_list*,int) ;
 struct commit_list* best_bisection_sorted (struct commit_list*,int) ;
 int clear_distance (struct commit_list*) ;
 int commit_weight ;
 int** commit_weight_at (int *,struct commit*) ;
 scalar_t__ count_distance (struct commit_list*) ;
 int count_interesting_parents (struct commit*) ;
 scalar_t__ halfway (struct commit_list*,int) ;
 int show_list (char*,int,int,struct commit_list*) ;
 scalar_t__ weight (struct commit_list*) ;
 int weight_set (struct commit_list*,scalar_t__) ;

__attribute__((used)) static struct commit_list *do_find_bisection(struct commit_list *list,
          int nr, int *weights,
          int find_all)
{
 int n, counted;
 struct commit_list *p;

 counted = 0;

 for (n = 0, p = list; p; p = p->next) {
  struct commit *commit = p->item;
  unsigned flags = commit->object.flags;

  *commit_weight_at(&commit_weight, p->item) = &weights[n++];
  switch (count_interesting_parents(commit)) {
  case 0:
   if (!(flags & TREESAME)) {
    weight_set(p, 1);
    counted++;
    show_list("bisection 2 count one",
       counted, nr, list);
   }




   break;
  case 1:
   weight_set(p, -1);
   break;
  default:
   weight_set(p, -2);
   break;
  }
 }

 show_list("bisection 2 initialize", counted, nr, list);
 for (p = list; p; p = p->next) {
  if (p->item->object.flags & UNINTERESTING)
   continue;
  if (weight(p) != -2)
   continue;
  weight_set(p, count_distance(p));
  clear_distance(list);


  if (!find_all && halfway(p, nr))
   return p;
  counted++;
 }

 show_list("bisection 2 count_distance", counted, nr, list);

 while (counted < nr) {
  for (p = list; p; p = p->next) {
   struct commit_list *q;
   unsigned flags = p->item->object.flags;

   if (0 <= weight(p))
    continue;
   for (q = p->item->parents; q; q = q->next) {
    if (q->item->object.flags & UNINTERESTING)
     continue;
    if (0 <= weight(q))
     break;
   }
   if (!q)
    continue;






   if (!(flags & TREESAME)) {
    weight_set(p, weight(q)+1);
    counted++;
    show_list("bisection 2 count one",
       counted, nr, list);
   }
   else
    weight_set(p, weight(q));


   if (!find_all && halfway(p, nr))
    return p;
  }
 }

 show_list("bisection 2 counted all", counted, nr, list);

 if (!find_all)
  return best_bisection(list, nr);
 else
  return best_bisection_sorted(list, nr);
}
