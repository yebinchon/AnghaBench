
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct overflow_queue {scalar_t__ n; scalar_t__ size; } ;



__attribute__((used)) static inline int
oq_full(struct overflow_queue *q)
{
 return q->n >= q->size;
}
