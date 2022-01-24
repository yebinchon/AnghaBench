#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int32_t ;
struct pst_softc {TYPE_2__* iop; } ;
struct pst_request {TYPE_3__* bp; int /*<<< orphan*/  timeout; struct pst_softc* psc; } ;
struct iop_softc {int dummy; } ;
struct i2o_single_reply {scalar_t__ status; scalar_t__ donecount; scalar_t__ transaction_context; } ;
struct TYPE_6__ {scalar_t__ bio_bcount; scalar_t__ bio_resid; } ;
struct TYPE_5__ {int /*<<< orphan*/  outstanding; TYPE_1__* reg; } ;
struct TYPE_4__ {int /*<<< orphan*/  oqueue; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  M_PSTRAID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pst_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pst_softc*) ; 

__attribute__((used)) static void
FUNC4(struct iop_softc *sc, u_int32_t mfa, struct i2o_single_reply *reply)
{
    struct pst_request *request =
	(struct pst_request *)reply->transaction_context;
    struct pst_softc *psc = request->psc;

    FUNC1(&request->timeout);
    request->bp->bio_resid = request->bp->bio_bcount - reply->donecount;
    FUNC0(request->bp, NULL, reply->status ? EIO : 0);
    FUNC2(request, M_PSTRAID);
    psc->iop->reg->oqueue = mfa;
    psc->iop->outstanding--;
    FUNC3(psc);
}