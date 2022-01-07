
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt_softc {int rx_ring_count; int intr_disable_mask; int int_rx_done_mask; int intr_pending_mask; int rx_done_task; int taskqueue; int * rx_interrupts; int dev; } ;


 int KASSERT (int,char*) ;
 int RT_DEBUG_INTR ;
 int RT_DPRINTF (struct rt_softc*,int ,char*) ;
 int RT_SOFTC_LOCK (struct rt_softc*) ;
 int RT_SOFTC_UNLOCK (struct rt_softc*) ;
 int device_get_nameunit (int ) ;
 int rt_intr_disable (struct rt_softc*,int) ;
 int taskqueue_enqueue (int ,int *) ;

__attribute__((used)) static void
rt_rx_intr(struct rt_softc *sc, int qid)
{
 KASSERT(qid >= 0 && qid < sc->rx_ring_count,
  ("%s: Rx interrupt: invalid qid=%d\n",
   device_get_nameunit(sc->dev), qid));

 RT_DPRINTF(sc, RT_DEBUG_INTR, "Rx interrupt\n");
 sc->rx_interrupts[qid]++;
 RT_SOFTC_LOCK(sc);

 if (!(sc->intr_disable_mask & (sc->int_rx_done_mask << qid))) {
  rt_intr_disable(sc, (sc->int_rx_done_mask << qid));
  taskqueue_enqueue(sc->taskqueue, &sc->rx_done_task);
 }

 sc->intr_pending_mask |= (sc->int_rx_done_mask << qid);
 RT_SOFTC_UNLOCK(sc);
}
