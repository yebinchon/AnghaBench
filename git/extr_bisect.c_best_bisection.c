
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct commit_list {TYPE_2__* item; struct commit_list* next; } ;
struct TYPE_3__ {unsigned int flags; } ;
struct TYPE_4__ {TYPE_1__ object; } ;


 unsigned int TREESAME ;
 int weight (struct commit_list*) ;

__attribute__((used)) static struct commit_list *best_bisection(struct commit_list *list, int nr)
{
 struct commit_list *p, *best;
 int best_distance = -1;

 best = list;
 for (p = list; p; p = p->next) {
  int distance;
  unsigned flags = p->item->object.flags;

  if (flags & TREESAME)
   continue;
  distance = weight(p);
  if (nr - distance < distance)
   distance = nr - distance;
  if (distance > best_distance) {
   best = p;
   best_distance = distance;
  }
 }

 return best;
}
