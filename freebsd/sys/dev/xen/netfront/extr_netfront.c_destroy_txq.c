
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sring; } ;
struct netfront_txq {int tq; int br; TYPE_1__ ring; } ;


 int M_DEVBUF ;
 int buf_ring_free (int ,int ) ;
 int free (int ,int ) ;
 int taskqueue_drain_all (int ) ;
 int taskqueue_free (int ) ;

__attribute__((used)) static void
destroy_txq(struct netfront_txq *txq)
{

 free(txq->ring.sring, M_DEVBUF);
 buf_ring_free(txq->br, M_DEVBUF);
 taskqueue_drain_all(txq->tq);
 taskqueue_free(txq->tq);
}
