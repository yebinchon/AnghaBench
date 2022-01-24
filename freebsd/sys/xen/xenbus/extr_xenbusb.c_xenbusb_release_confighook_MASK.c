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
struct xenbusb_softc {scalar_t__ xbs_connecting_children; int xbs_flags; int /*<<< orphan*/  xbs_lock; int /*<<< orphan*/  xbs_attach_ch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int XBS_ATTACH_CH_ACTIVE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct xenbusb_softc *xbs)
{
	FUNC2(&xbs->xbs_lock);
	FUNC0(xbs->xbs_connecting_children > 0,
		("Connecting device count error\n"));
	xbs->xbs_connecting_children--;
	if (xbs->xbs_connecting_children == 0
	 && (xbs->xbs_flags & XBS_ATTACH_CH_ACTIVE) != 0) {
		xbs->xbs_flags &= ~XBS_ATTACH_CH_ACTIVE;
		FUNC3(&xbs->xbs_lock);
		FUNC1(&xbs->xbs_attach_ch);
	} else {
		FUNC3(&xbs->xbs_lock);
	}
}