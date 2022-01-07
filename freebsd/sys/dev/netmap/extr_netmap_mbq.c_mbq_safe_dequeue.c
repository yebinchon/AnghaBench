
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct mbq {int dummy; } ;


 struct mbuf* __mbq_dequeue (struct mbq*) ;
 int mbq_lock (struct mbq*) ;
 int mbq_unlock (struct mbq*) ;

struct mbuf *mbq_safe_dequeue(struct mbq *q)
{
    struct mbuf *ret;

    mbq_lock(q);
    ret = __mbq_dequeue(q);
    mbq_unlock(q);

    return ret;
}
