
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ head; } ;
struct dn_queue {TYPE_1__ mq; } ;


 int dn_free_pkts (scalar_t__) ;
 int free (struct dn_queue*) ;

int
dn_delete_queue(void *_q, void *do_free)
{
 struct dn_queue *q = _q;

 (void)do_free;
        if (q->mq.head)
                dn_free_pkts(q->mq.head);
        free(q);
        return 0;
}
