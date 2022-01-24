#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pcifront_device {TYPE_1__* xdev; } ;
typedef  scalar_t__ XenbusState ;
struct TYPE_2__ {int /*<<< orphan*/  nodename; } ;

/* Variables and functions */
 scalar_t__ XenbusStateClosing ; 
 scalar_t__ XenbusStateConnected ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static int
FUNC2(struct pcifront_device *pdev)
{
	int err = 0;
	XenbusState prev_state;

	prev_state = FUNC0(pdev->xdev->nodename);

	if (prev_state < XenbusStateClosing) {
		err = FUNC1(pdev->xdev, NULL, XenbusStateClosing);
		if (!err && prev_state == XenbusStateConnected) {
			/* TODO - need to detach the newbus devices */
		}
	}

	return err;
}