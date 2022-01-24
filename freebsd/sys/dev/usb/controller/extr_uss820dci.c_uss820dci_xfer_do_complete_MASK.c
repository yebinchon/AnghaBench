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
typedef  int uint8_t ;
struct uss820dci_td {int dummy; } ;
struct usb_xfer {struct uss820dci_td* td_transfer_cache; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_xfer*) ; 

__attribute__((used)) static uint8_t
FUNC2(struct usb_xfer *xfer)
{
	struct uss820dci_td *td;

	FUNC0(9, "\n");

	td = xfer->td_transfer_cache;
	if (td == NULL) {
		/* compute all actual lengths */
		FUNC1(xfer);
		return(1);
	}
	return (0);
}