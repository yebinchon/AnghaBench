
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct TYPE_4__ {int length; int drops; int tot_pkts; int tot_bytes; } ;
struct dn_queue {TYPE_2__ ni; int mq; } ;


 int mq_append (int *,struct mbuf*) ;

int
dn_enqueue(struct dn_queue *q, struct mbuf* m, int drop)
{
        if (drop)
                goto drop;
        if (q->ni.length >= 200)
                goto drop;
        mq_append(&q->mq, m);
        q->ni.length++;
        q->ni.tot_bytes += m->m_pkthdr.len;
        q->ni.tot_pkts++;
        return 0;

drop:
        q->ni.drops++;
        return 1;
}
