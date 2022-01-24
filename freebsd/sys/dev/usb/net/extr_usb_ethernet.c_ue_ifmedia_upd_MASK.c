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
struct usb_ether {TYPE_1__* ue_media_task; } ;
struct ifnet {struct usb_ether* if_softc; } ;
struct TYPE_2__ {int /*<<< orphan*/  hdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_ether*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_ether*) ; 
 int /*<<< orphan*/  ue_ifmedia_task ; 
 int /*<<< orphan*/  FUNC2 (struct usb_ether*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct ifnet *ifp)
{
	struct usb_ether *ue = ifp->if_softc;

	/* Defer to process context */
	FUNC0(ue);
	FUNC2(ue, ue_ifmedia_task,
	    &ue->ue_media_task[0].hdr,
	    &ue->ue_media_task[1].hdr);
	FUNC1(ue);

	return (0);
}