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
struct xbd_softc {int /*<<< orphan*/  xbd_ring_pages; int /*<<< orphan*/  xbd_max_request_size; int /*<<< orphan*/  xbd_max_request_segments; int /*<<< orphan*/  xbd_max_requests; int /*<<< orphan*/  xbd_dev; } ;
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;

/* Variables and functions */
 int CTLFLAG_RD ; 
 int CTLTYPE_STRING ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,struct xbd_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int,char*) ; 
 struct sysctl_oid_list* FUNC2 (struct sysctl_oid*) ; 
 struct sysctl_ctx_list* FUNC3 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xbd_sysctl_features ; 

__attribute__((used)) static void
FUNC5(struct xbd_softc *xbd)
{
	struct sysctl_ctx_list *sysctl_ctx = NULL;
	struct sysctl_oid *sysctl_tree = NULL;
	struct sysctl_oid_list *children;
	
	sysctl_ctx = FUNC3(xbd->xbd_dev);
	if (sysctl_ctx == NULL)
		return;

	sysctl_tree = FUNC4(xbd->xbd_dev);
	if (sysctl_tree == NULL)
		return;

	children = FUNC2(sysctl_tree);
	FUNC1(sysctl_ctx, children, OID_AUTO,
	    "max_requests", CTLFLAG_RD, &xbd->xbd_max_requests, -1,
	    "maximum outstanding requests (negotiated)");

	FUNC1(sysctl_ctx, children, OID_AUTO,
	    "max_request_segments", CTLFLAG_RD,
	    &xbd->xbd_max_request_segments, 0,
	    "maximum number of pages per requests (negotiated)");

	FUNC1(sysctl_ctx, children, OID_AUTO,
	    "max_request_size", CTLFLAG_RD, &xbd->xbd_max_request_size, 0,
	    "maximum size in bytes of a request (negotiated)");

	FUNC1(sysctl_ctx, children, OID_AUTO,
	    "ring_pages", CTLFLAG_RD, &xbd->xbd_ring_pages, 0,
	    "communication channel pages (negotiated)");

	FUNC0(sysctl_ctx, children, OID_AUTO,
	    "features", CTLTYPE_STRING|CTLFLAG_RD, xbd, 0,
	    xbd_sysctl_features, "A", "protocol features (negotiated)");
}