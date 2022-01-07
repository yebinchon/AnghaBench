
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct overflow_queue {scalar_t__ n; } ;



__attribute__((used)) static inline int
oq_empty(struct overflow_queue *q)
{
 return q->n <= 0;
}
