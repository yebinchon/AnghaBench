
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qfq_sched {struct qfq_group* groups; } ;
struct qfq_group {int dummy; } ;


 int ffs (unsigned long) ;

__attribute__((used)) static inline struct qfq_group *qfq_ffs(struct qfq_sched *q,
     unsigned long bitmap)
{
 int index = ffs(bitmap) - 1;
 return &q->groups[index];
}
