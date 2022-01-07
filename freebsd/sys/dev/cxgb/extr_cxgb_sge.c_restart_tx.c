
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sge_qset {TYPE_2__* txq; int txq_stopped; TYPE_1__* port; } ;
struct adapter {int tq; } ;
struct TYPE_4__ {int qresume_task; int restarts; } ;
struct TYPE_3__ {struct adapter* adapter; } ;


 size_t TXQ_CTRL ;
 size_t TXQ_OFLD ;
 scalar_t__ isset (int *,size_t) ;
 scalar_t__ should_restart_tx (TYPE_2__*) ;
 int taskqueue_enqueue (int ,int *) ;
 scalar_t__ test_and_clear_bit (size_t,int *) ;

__attribute__((used)) static void
restart_tx(struct sge_qset *qs)
{
 struct adapter *sc = qs->port->adapter;

 if (isset(&qs->txq_stopped, TXQ_OFLD) &&
     should_restart_tx(&qs->txq[TXQ_OFLD]) &&
     test_and_clear_bit(TXQ_OFLD, &qs->txq_stopped)) {
  qs->txq[TXQ_OFLD].restarts++;
  taskqueue_enqueue(sc->tq, &qs->txq[TXQ_OFLD].qresume_task);
 }

 if (isset(&qs->txq_stopped, TXQ_CTRL) &&
     should_restart_tx(&qs->txq[TXQ_CTRL]) &&
     test_and_clear_bit(TXQ_CTRL, &qs->txq_stopped)) {
  qs->txq[TXQ_CTRL].restarts++;
  taskqueue_enqueue(sc->tq, &qs->txq[TXQ_CTRL].qresume_task);
 }
}
