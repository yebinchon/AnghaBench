
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbq {scalar_t__ count; int * tail; int head; } ;



__attribute__((used)) static inline void __mbq_init(struct mbq *q)
{
    q->head = q->tail = ((void*)0);
    q->count = 0;
}
