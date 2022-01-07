
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int32_t ;
struct pst_softc {TYPE_2__* iop; } ;
struct pst_request {TYPE_3__* bp; int timeout; struct pst_softc* psc; } ;
struct iop_softc {int dummy; } ;
struct i2o_single_reply {scalar_t__ status; scalar_t__ donecount; scalar_t__ transaction_context; } ;
struct TYPE_6__ {scalar_t__ bio_bcount; scalar_t__ bio_resid; } ;
struct TYPE_5__ {int outstanding; TYPE_1__* reg; } ;
struct TYPE_4__ {int oqueue; } ;


 int EIO ;
 int M_PSTRAID ;
 int biofinish (TYPE_3__*,int *,int ) ;
 int callout_stop (int *) ;
 int free (struct pst_request*,int ) ;
 int pst_start (struct pst_softc*) ;

__attribute__((used)) static void
pst_done(struct iop_softc *sc, u_int32_t mfa, struct i2o_single_reply *reply)
{
    struct pst_request *request =
 (struct pst_request *)reply->transaction_context;
    struct pst_softc *psc = request->psc;

    callout_stop(&request->timeout);
    request->bp->bio_resid = request->bp->bio_bcount - reply->donecount;
    biofinish(request->bp, ((void*)0), reply->status ? EIO : 0);
    free(request, M_PSTRAID);
    psc->iop->reg->oqueue = mfa;
    psc->iop->outstanding--;
    pst_start(psc);
}
