#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct pst_request {int mfa; TYPE_1__* psc; TYPE_4__* bp; } ;
struct TYPE_7__ {int bio_cmd; } ;
struct TYPE_6__ {int /*<<< orphan*/  outstanding; int /*<<< orphan*/  mtx; } ;
struct TYPE_5__ {TYPE_2__* iop; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 scalar_t__ FUNC5 (struct pst_request*) ; 

__attribute__((used)) static void
FUNC6(void *arg)
{
    struct pst_request *request;

    request = arg;
    FUNC4("pst: timeout mfa=0x%08x cmd=0x%02x\n",
	   request->mfa, request->bp->bio_cmd);
    FUNC3(&request->psc->iop->mtx, MA_OWNED);
    FUNC1(request->psc->iop, request->mfa);
    if ((request->mfa = FUNC2(request->psc->iop)) == 0xffffffff) {
	FUNC4("pst: timeout no mfa possible\n");
	FUNC0(request->bp, NULL, EIO);
	request->psc->iop->outstanding--;
	return;
    }
    if (FUNC5(request)) {
	FUNC1(request->psc->iop, request->mfa);
	FUNC0(request->bp, NULL, EIO);
	request->psc->iop->outstanding--;
    }
}