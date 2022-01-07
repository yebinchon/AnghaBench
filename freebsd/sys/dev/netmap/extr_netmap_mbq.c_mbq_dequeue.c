
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct mbq {int dummy; } ;


 struct mbuf* __mbq_dequeue (struct mbq*) ;

struct mbuf *mbq_dequeue(struct mbq *q)
{
    return __mbq_dequeue(q);
}
