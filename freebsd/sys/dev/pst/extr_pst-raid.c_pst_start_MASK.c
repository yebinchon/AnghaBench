#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int32_t ;
struct pst_softc {TYPE_1__* iop; int /*<<< orphan*/  queue; } ;
struct pst_request {int mfa; struct pst_softc* psc; struct bio* bp; int /*<<< orphan*/  timeout; } ;
struct bio {int dummy; } ;
struct TYPE_3__ {int outstanding; int /*<<< orphan*/  mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENOMEM ; 
 int I2O_IOP_OUTBOUND_FRAME_COUNT ; 
 int M_NOWAIT ; 
 int /*<<< orphan*/  M_PSTRAID ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (struct bio*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct bio* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pst_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int FUNC6 (TYPE_1__*) ; 
 struct pst_request* FUNC7 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ FUNC9 (struct pst_request*) ; 

__attribute__((used)) static void
FUNC10(struct pst_softc *psc)
{
    struct pst_request *request;
    struct bio *bp;
    u_int32_t mfa;

    if (psc->iop->outstanding < (I2O_IOP_OUTBOUND_FRAME_COUNT - 1) &&
	(bp = FUNC1(&psc->queue))) {
	if ((mfa = FUNC6(psc->iop)) != 0xffffffff) {
	    FUNC2(&psc->queue, bp);
	    if (!(request = FUNC7(sizeof(struct pst_request),
				   M_PSTRAID, M_NOWAIT | M_ZERO))) {
		FUNC8("pst: out of memory in start\n");
		FUNC0(request->bp, NULL, ENOMEM);
		FUNC5(psc->iop, mfa);
		return;
	    }
	    FUNC3(&request->timeout, &psc->iop->mtx, 0);
	    psc->iop->outstanding++;
	    request->psc = psc;
	    request->mfa = mfa;
	    request->bp = bp;
	    if (FUNC9(request)) {
		FUNC0(request->bp, NULL, EIO);
		FUNC5(request->psc->iop, request->mfa);
		psc->iop->outstanding--;
		FUNC4(request, M_PSTRAID);
	    }
	}
    }
}