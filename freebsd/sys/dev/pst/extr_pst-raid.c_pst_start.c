
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
struct pst_softc {TYPE_1__* iop; int queue; } ;
struct pst_request {int mfa; struct pst_softc* psc; struct bio* bp; int timeout; } ;
struct bio {int dummy; } ;
struct TYPE_3__ {int outstanding; int mtx; } ;


 int EIO ;
 int ENOMEM ;
 int I2O_IOP_OUTBOUND_FRAME_COUNT ;
 int M_NOWAIT ;
 int M_PSTRAID ;
 int M_ZERO ;
 int biofinish (struct bio*,int *,int ) ;
 struct bio* bioq_first (int *) ;
 int bioq_remove (int *,struct bio*) ;
 int callout_init_mtx (int *,int *,int ) ;
 int free (struct pst_request*,int ) ;
 int iop_free_mfa (TYPE_1__*,int) ;
 int iop_get_mfa (TYPE_1__*) ;
 struct pst_request* malloc (int,int ,int) ;
 int printf (char*) ;
 scalar_t__ pst_rw (struct pst_request*) ;

__attribute__((used)) static void
pst_start(struct pst_softc *psc)
{
    struct pst_request *request;
    struct bio *bp;
    u_int32_t mfa;

    if (psc->iop->outstanding < (I2O_IOP_OUTBOUND_FRAME_COUNT - 1) &&
 (bp = bioq_first(&psc->queue))) {
 if ((mfa = iop_get_mfa(psc->iop)) != 0xffffffff) {
     bioq_remove(&psc->queue, bp);
     if (!(request = malloc(sizeof(struct pst_request),
       M_PSTRAID, M_NOWAIT | M_ZERO))) {
  printf("pst: out of memory in start\n");
  biofinish(request->bp, ((void*)0), ENOMEM);
  iop_free_mfa(psc->iop, mfa);
  return;
     }
     callout_init_mtx(&request->timeout, &psc->iop->mtx, 0);
     psc->iop->outstanding++;
     request->psc = psc;
     request->mfa = mfa;
     request->bp = bp;
     if (pst_rw(request)) {
  biofinish(request->bp, ((void*)0), EIO);
  iop_free_mfa(request->psc->iop, request->mfa);
  psc->iop->outstanding--;
  free(request, M_PSTRAID);
     }
 }
    }
}
