
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt_softc {int intr_disable_mask; int int_tx_done_mask; int intr_pending_mask; int tx_done_task; int taskqueue; int * tx_interrupts; int dev; } ;


 int KASSERT (int,char*) ;
 int RT_DEBUG_INTR ;
 int RT_DPRINTF (struct rt_softc*,int ,char*,int) ;
 int RT_SOFTC_LOCK (struct rt_softc*) ;
 int RT_SOFTC_TX_RING_COUNT ;
 int RT_SOFTC_UNLOCK (struct rt_softc*) ;
 int device_get_nameunit (int ) ;
 int rt_intr_disable (struct rt_softc*,int) ;
 int taskqueue_enqueue (int ,int *) ;

__attribute__((used)) static void
rt_tx_intr(struct rt_softc *sc, int qid)
{

 KASSERT(qid >= 0 && qid < RT_SOFTC_TX_RING_COUNT,
  ("%s: Tx interrupt: invalid qid=%d\n",
   device_get_nameunit(sc->dev), qid));

 RT_DPRINTF(sc, RT_DEBUG_INTR, "Tx interrupt: qid=%d\n", qid);

 sc->tx_interrupts[qid]++;
 RT_SOFTC_LOCK(sc);

 if (!(sc->intr_disable_mask & (sc->int_tx_done_mask << qid))) {
  rt_intr_disable(sc, (sc->int_tx_done_mask << qid));
  taskqueue_enqueue(sc->taskqueue, &sc->tx_done_task);
 }

 sc->intr_pending_mask |= (sc->int_tx_done_mask << qid);
 RT_SOFTC_UNLOCK(sc);
}
