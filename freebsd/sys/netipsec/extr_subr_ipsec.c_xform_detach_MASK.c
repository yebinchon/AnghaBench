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
struct xformsw {int xf_cntr; } ;

/* Variables and functions */
 int IPSEC_MODULE_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (struct xformsw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  chain ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (struct xformsw*) ; 

void
FUNC5(void *data)
{
	struct xformsw *xsp = (struct xformsw *)data;

	FUNC1();
	FUNC0(xsp, chain);
	FUNC2();

	/* Delete all SAs related to this xform. */
	FUNC4(xsp);
	if (xsp->xf_cntr & IPSEC_MODULE_ENABLED)
		FUNC3(&xsp->xf_cntr);
}