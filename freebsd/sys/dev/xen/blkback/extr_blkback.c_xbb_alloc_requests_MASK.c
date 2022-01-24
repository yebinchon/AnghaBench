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
struct xbb_xen_req {int dummy; } ;
struct xbb_softc {int max_requests; int /*<<< orphan*/  request_free_stailq; struct xbb_xen_req* requests; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int M_NOWAIT ; 
 int /*<<< orphan*/  M_XENBLOCKBACK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct xbb_xen_req*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  links ; 
 struct xbb_xen_req* FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*) ; 

__attribute__((used)) static int
FUNC4(struct xbb_softc *xbb)
{
	struct xbb_xen_req *req;
	struct xbb_xen_req *last_req;

	/*
	 * Allocate request book keeping datastructures.
	 */
	xbb->requests = FUNC2(xbb->max_requests * sizeof(*xbb->requests),
			       M_XENBLOCKBACK, M_NOWAIT|M_ZERO);
	if (xbb->requests == NULL) {
		FUNC3(xbb->dev, ENOMEM, 
				  "Unable to allocate request structures");
		return (ENOMEM);
	}

	req      = xbb->requests;
	last_req = &xbb->requests[xbb->max_requests - 1];
	FUNC0(&xbb->request_free_stailq);
	while (req <= last_req) {
		FUNC1(&xbb->request_free_stailq, req, links);
		req++;
	}
	return (0);
}