
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rm_queue {struct rm_queue* rmq_next; struct rm_queue* rmq_prev; } ;
struct rm_priotracker {struct rm_queue rmp_cpuQueue; } ;
struct pcpu {struct rm_queue pc_rm_queue; } ;



__attribute__((used)) static void inline
rm_tracker_add(struct pcpu *pc, struct rm_priotracker *tracker)
{
 struct rm_queue *next;


 tracker->rmp_cpuQueue.rmq_prev = &pc->pc_rm_queue;
 next = pc->pc_rm_queue.rmq_next;
 tracker->rmp_cpuQueue.rmq_next = next;


 next->rmq_prev = &tracker->rmp_cpuQueue;


 pc->pc_rm_queue.rmq_next = &tracker->rmp_cpuQueue;
}
