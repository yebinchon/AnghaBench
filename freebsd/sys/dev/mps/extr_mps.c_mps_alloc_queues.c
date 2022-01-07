
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct mps_softc {int msi_msgs; struct mps_queue* queues; } ;
struct mps_queue {int qnum; struct mps_softc* sc; } ;


 int ENOMEM ;
 int MPS_INIT ;
 int MPS_XINFO ;
 int M_MPT2 ;
 int M_NOWAIT ;
 int M_ZERO ;
 struct mps_queue* malloc (int,int ,int) ;
 int mps_dprint (struct mps_softc*,int,char*,int,...) ;

__attribute__((used)) static int
mps_alloc_queues(struct mps_softc *sc)
{
 struct mps_queue *q;
 u_int nq, i;

 nq = sc->msi_msgs;
 mps_dprint(sc, MPS_INIT|MPS_XINFO, "Allocating %d I/O queues\n", nq);

 sc->queues = malloc(sizeof(struct mps_queue) * nq, M_MPT2,
     M_NOWAIT|M_ZERO);
 if (sc->queues == ((void*)0))
  return (ENOMEM);

 for (i = 0; i < nq; i++) {
  q = &sc->queues[i];
  mps_dprint(sc, MPS_INIT, "Configuring queue %d %p\n", i, q);
  q->sc = sc;
  q->qnum = i;
 }

 return (0);
}
