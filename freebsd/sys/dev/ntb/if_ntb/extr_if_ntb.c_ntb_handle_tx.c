
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_net_queue {int tx_lock; } ;


 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int ntb_transmit_locked (struct ntb_net_queue*) ;

__attribute__((used)) static void
ntb_handle_tx(void *arg, int pending)
{
 struct ntb_net_queue *q = arg;

 mtx_lock(&q->tx_lock);
 ntb_transmit_locked(q);
 mtx_unlock(&q->tx_lock);
}
