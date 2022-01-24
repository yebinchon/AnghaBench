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
typedef  size_t u_int ;
struct xbb_xen_reqlist {size_t nr_segments; scalar_t__* gnt_handles; } ;
struct gnttab_unmap_grant_ref {scalar_t__ handle; scalar_t__ dev_bus_addr; int /*<<< orphan*/  host_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  GNTTABOP_unmap_grant_ref ; 
 scalar_t__ GRANT_REF_INVALID ; 
 int FUNC0 (int /*<<< orphan*/ ,struct gnttab_unmap_grant_ref*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int XBB_MAX_SEGMENTS_PER_REQLIST ; 
 int /*<<< orphan*/  FUNC2 (struct xbb_xen_reqlist*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct xbb_xen_reqlist *reqlist)
{
	struct gnttab_unmap_grant_ref unmap[XBB_MAX_SEGMENTS_PER_REQLIST];
	u_int			      i;
	u_int			      invcount;
	int			      error;

	invcount = 0;
	for (i = 0; i < reqlist->nr_segments; i++) {

		if (reqlist->gnt_handles[i] == GRANT_REF_INVALID)
			continue;

		unmap[invcount].host_addr    = FUNC2(reqlist, i, 0);
		unmap[invcount].dev_bus_addr = 0;
		unmap[invcount].handle       = reqlist->gnt_handles[i];
		reqlist->gnt_handles[i]	     = GRANT_REF_INVALID;
		invcount++;
	}

	error = FUNC0(GNTTABOP_unmap_grant_ref,
					  unmap, invcount);
	FUNC1(error == 0, ("Grant table operation failed"));
}