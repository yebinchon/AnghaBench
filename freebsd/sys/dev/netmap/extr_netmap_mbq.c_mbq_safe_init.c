
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbq {int lock; } ;


 int MTX_SPIN ;
 int __mbq_init (struct mbq*) ;
 int mtx_init (int *,char*,int *,int ) ;

void mbq_safe_init(struct mbq *q)
{
    mtx_init(&q->lock, "mbq", ((void*)0), MTX_SPIN);
    __mbq_init(q);
}
