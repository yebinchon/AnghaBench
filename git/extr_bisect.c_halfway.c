
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct commit_list {TYPE_2__* item; } ;
struct TYPE_3__ {int flags; } ;
struct TYPE_4__ {TYPE_1__ object; } ;


 scalar_t__ DEBUG_BISECT ;
 int TREESAME ;
 int weight (struct commit_list*) ;

__attribute__((used)) static inline int halfway(struct commit_list *p, int nr)
{



 if (p->item->object.flags & TREESAME)
  return 0;
 if (DEBUG_BISECT)
  return 0;




 switch (2 * weight(p) - nr) {
 case -1: case 0: case 1:
  return 1;
 default:
  return 0;
 }
}
