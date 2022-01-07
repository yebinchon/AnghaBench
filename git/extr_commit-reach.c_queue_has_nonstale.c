
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct prio_queue {int nr; TYPE_1__* array; } ;
struct TYPE_4__ {int flags; } ;
struct commit {TYPE_2__ object; } ;
struct TYPE_3__ {struct commit* data; } ;


 int STALE ;

__attribute__((used)) static int queue_has_nonstale(struct prio_queue *queue)
{
 int i;
 for (i = 0; i < queue->nr; i++) {
  struct commit *commit = queue->array[i].data;
  if (!(commit->object.flags & STALE))
   return 1;
 }
 return 0;
}
