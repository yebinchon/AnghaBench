#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vtscsi_softc {int dummy; } ;
struct vtscsi_request {int /*<<< orphan*/  vsr_callout; struct vtscsi_softc* vsr_softc; int /*<<< orphan*/  vsr_uresp; int /*<<< orphan*/  vsr_ureq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct vtscsi_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC4(struct vtscsi_softc *sc, struct vtscsi_request *req)
{

#ifdef INVARIANTS
	int req_nsegs, resp_nsegs;

	req_nsegs = sglist_count(&req->vsr_ureq, sizeof(req->vsr_ureq));
	resp_nsegs = sglist_count(&req->vsr_uresp, sizeof(req->vsr_uresp));

	KASSERT(req_nsegs == 1, ("request crossed page boundary"));
	KASSERT(resp_nsegs == 1, ("response crossed page boundary"));
#endif

	req->vsr_softc = sc;
	FUNC2(&req->vsr_callout, FUNC1(sc), 0);
}