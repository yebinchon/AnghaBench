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
struct vtscsi_softc {int vtscsi_flags; int /*<<< orphan*/  vtscsi_nrequests; int /*<<< orphan*/  vtscsi_request_vq; } ;
struct vtscsi_request {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int VTSCSI_FLAG_INDIRECT ; 
 int VTSCSI_MIN_SEGMENTS ; 
 scalar_t__ VTSCSI_RESERVED_REQUESTS ; 
 struct vtscsi_request* FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vtscsi_softc*,struct vtscsi_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct vtscsi_softc*,struct vtscsi_request*) ; 

__attribute__((used)) static int
FUNC4(struct vtscsi_softc *sc)
{
	struct vtscsi_request *req;
	int i, nreqs;

	/*
	 * Commands destined for either the request or control queues come
	 * from the same SIM queue. Use the size of the request virtqueue
	 * as it (should) be much more frequently used. Some additional
	 * requests are allocated for internal (TMF) use.
	 */
	nreqs = FUNC1(sc->vtscsi_request_vq);
	if ((sc->vtscsi_flags & VTSCSI_FLAG_INDIRECT) == 0)
		nreqs /= VTSCSI_MIN_SEGMENTS;
	nreqs += VTSCSI_RESERVED_REQUESTS;

	for (i = 0; i < nreqs; i++) {
		req = FUNC0(sizeof(struct vtscsi_request), M_DEVBUF,
		    M_NOWAIT);
		if (req == NULL)
			return (ENOMEM);

		FUNC3(sc, req);

		sc->vtscsi_nrequests++;
		FUNC2(sc, req);
	}

	return (0);
}