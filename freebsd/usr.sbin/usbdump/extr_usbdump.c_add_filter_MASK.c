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
struct usb_filt {int unit; int endpoint; } ;

/* Variables and functions */
 int /*<<< orphan*/  EX_SOFTWARE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct usb_filt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  entry ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct usb_filt* FUNC2 (int) ; 
 int /*<<< orphan*/  usb_filt_head ; 

__attribute__((used)) static void
FUNC3(int usb_filt_unit, int usb_filt_ep)
{
	struct usb_filt *puf;

	puf = FUNC2(sizeof(struct usb_filt));
	if (puf == NULL)
		FUNC1(EX_SOFTWARE, "Out of memory.");

	puf->unit = usb_filt_unit;
	puf->endpoint = usb_filt_ep;

	FUNC0(&usb_filt_head, puf, entry);
}