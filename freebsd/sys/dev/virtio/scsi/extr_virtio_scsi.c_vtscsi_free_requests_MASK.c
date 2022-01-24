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
struct vtscsi_softc {scalar_t__ vtscsi_nrequests; } ;
struct vtscsi_request {int /*<<< orphan*/  vsr_callout; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct vtscsi_request*,int /*<<< orphan*/ ) ; 
 struct vtscsi_request* FUNC3 (struct vtscsi_softc*) ; 

__attribute__((used)) static void
FUNC4(struct vtscsi_softc *sc)
{
	struct vtscsi_request *req;

	while ((req = FUNC3(sc)) != NULL) {
		FUNC0(FUNC1(&req->vsr_callout) == 0,
		    ("request callout still active"));

		sc->vtscsi_nrequests--;
		FUNC2(req, M_DEVBUF);
	}

	FUNC0(sc->vtscsi_nrequests == 0, ("leaked requests: %d",
	    sc->vtscsi_nrequests));
}