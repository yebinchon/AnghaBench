
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpr_softc {int msi_msgs; struct mpr_queue* queues; } ;
struct mpr_queue {int qnum; struct mpr_softc* sc; } ;


 int ENOMEM ;
 int MPR_INIT ;
 int MPR_XINFO ;
 int M_MPR ;
 int M_NOWAIT ;
 int M_ZERO ;
 struct mpr_queue* malloc (int,int ,int) ;
 int mpr_dprint (struct mpr_softc*,int,char*,int,...) ;

__attribute__((used)) static int
mpr_alloc_queues(struct mpr_softc *sc)
{
 struct mpr_queue *q;
 int nq, i;

 nq = sc->msi_msgs;
 mpr_dprint(sc, MPR_INIT|MPR_XINFO, "Allocating %d I/O queues\n", nq);

 sc->queues = malloc(sizeof(struct mpr_queue) * nq, M_MPR,
      M_NOWAIT|M_ZERO);
 if (sc->queues == ((void*)0))
  return (ENOMEM);

 for (i = 0; i < nq; i++) {
  q = &sc->queues[i];
  mpr_dprint(sc, MPR_INIT, "Configuring queue %d %p\n", i, q);
  q->sc = sc;
  q->qnum = i;
 }
 return (0);
}
