
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rm_queue {struct rm_queue* rmq_next; struct rm_queue* rmq_prev; } ;
struct TYPE_2__ {struct rm_queue* rmq_prev; struct rm_queue* rmq_next; } ;
struct rm_priotracker {TYPE_1__ rmp_cpuQueue; } ;
struct pcpu {int dummy; } ;



__attribute__((used)) static void inline
rm_tracker_remove(struct pcpu *pc, struct rm_priotracker *tracker)
{
 struct rm_queue *next, *prev;

 next = tracker->rmp_cpuQueue.rmq_next;
 prev = tracker->rmp_cpuQueue.rmq_prev;


 next->rmq_prev = prev;


 prev->rmq_next = next;
}
