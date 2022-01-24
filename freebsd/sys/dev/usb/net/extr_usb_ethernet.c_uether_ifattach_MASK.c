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
struct usb_ether {TYPE_1__* ue_sync_task; int /*<<< orphan*/ * ue_dev; int /*<<< orphan*/ * ue_mtx; int /*<<< orphan*/  ue_tq; int /*<<< orphan*/ * ue_methods; int /*<<< orphan*/ * ue_udev; } ;
struct TYPE_2__ {int /*<<< orphan*/  hdr; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct usb_ether*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_ether*) ; 
 int /*<<< orphan*/  USB_PRI_MED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  ue_attach_post_task ; 
 int /*<<< orphan*/  FUNC4 (struct usb_ether*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC6(struct usb_ether *ue)
{
	int error;

	/* check some critical parameters */
	if ((ue->ue_dev == NULL) ||
	    (ue->ue_udev == NULL) ||
	    (ue->ue_mtx == NULL) ||
	    (ue->ue_methods == NULL))
		return (EINVAL);

	error = FUNC5(&ue->ue_tq, ue->ue_mtx, 
	    FUNC2(ue->ue_dev), USB_PRI_MED);
	if (error) {
		FUNC3(ue->ue_dev, "could not setup taskqueue\n");
		goto error;
	}

	/* fork rest of the attach code */
	FUNC0(ue);
	FUNC4(ue, ue_attach_post_task,
	    &ue->ue_sync_task[0].hdr,
	    &ue->ue_sync_task[1].hdr);
	FUNC1(ue);

error:
	return (error);
}