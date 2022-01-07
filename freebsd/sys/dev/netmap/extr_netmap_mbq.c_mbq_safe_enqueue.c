
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct mbq {int dummy; } ;


 int __mbq_enqueue (struct mbq*,struct mbuf*) ;
 int mbq_lock (struct mbq*) ;
 int mbq_unlock (struct mbq*) ;

void mbq_safe_enqueue(struct mbq *q, struct mbuf *m)
{
    mbq_lock(q);
    __mbq_enqueue(q, m);
    mbq_unlock(q);
}
