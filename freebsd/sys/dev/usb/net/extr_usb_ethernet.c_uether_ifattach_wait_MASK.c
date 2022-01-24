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
struct usb_ether {TYPE_1__* ue_sync_task; int /*<<< orphan*/  ue_tq; } ;
struct TYPE_2__ {int /*<<< orphan*/  hdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_ether*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_ether*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC3(struct usb_ether *ue)
{

	FUNC0(ue);
	FUNC2(&ue->ue_tq,
	    &ue->ue_sync_task[0].hdr,
	    &ue->ue_sync_task[1].hdr);
	FUNC1(ue);
}