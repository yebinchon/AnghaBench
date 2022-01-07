
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbq {int lock; } ;


 int mtx_destroy (int *) ;

void mbq_safe_fini(struct mbq *q)
{
    mtx_destroy(&q->lock);
}
