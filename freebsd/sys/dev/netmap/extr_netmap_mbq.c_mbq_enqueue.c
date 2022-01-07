
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct mbq {int dummy; } ;


 int __mbq_enqueue (struct mbq*,struct mbuf*) ;

void mbq_enqueue(struct mbq *q, struct mbuf *m)
{
    __mbq_enqueue(q, m);
}
