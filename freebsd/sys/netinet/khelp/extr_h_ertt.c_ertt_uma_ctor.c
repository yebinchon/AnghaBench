
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ertt {scalar_t__ markedpkt_rtt; scalar_t__ bytes_tx_in_rtt; scalar_t__ dlyack_rx; scalar_t__ flags; scalar_t__ rtt; scalar_t__ maxrtt; scalar_t__ minrtt; scalar_t__ timestamp_errors; int txsegi_q; } ;


 int TAILQ_INIT (int *) ;

__attribute__((used)) static int
ertt_uma_ctor(void *mem, int size, void *arg, int flags)
{
 struct ertt *e_t;

 e_t = mem;

 TAILQ_INIT(&e_t->txsegi_q);
 e_t->timestamp_errors = 0;
 e_t->minrtt = 0;
 e_t->maxrtt = 0;
 e_t->rtt = 0;
 e_t->flags = 0;
 e_t->dlyack_rx = 0;
 e_t->bytes_tx_in_rtt = 0;
 e_t->markedpkt_rtt = 0;

 return (0);
}
