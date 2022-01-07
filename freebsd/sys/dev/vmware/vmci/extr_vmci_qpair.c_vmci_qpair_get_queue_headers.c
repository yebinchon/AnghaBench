
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vmci_queue_header {int dummy; } ;
struct vmci_qpair {TYPE_2__* consume_q; TYPE_1__* produce_q; } ;
struct TYPE_4__ {struct vmci_queue_header* q_header; } ;
struct TYPE_3__ {struct vmci_queue_header* q_header; } ;


 int ASSERT (int) ;

__attribute__((used)) static void
vmci_qpair_get_queue_headers(const struct vmci_qpair *qpair,
    struct vmci_queue_header **produce_q_header,
    struct vmci_queue_header **consume_q_header)
{

 ASSERT((qpair->produce_q != ((void*)0)) && (qpair->consume_q != ((void*)0)));
 *produce_q_header = qpair->produce_q->q_header;
 *consume_q_header = qpair->consume_q->q_header;
}
