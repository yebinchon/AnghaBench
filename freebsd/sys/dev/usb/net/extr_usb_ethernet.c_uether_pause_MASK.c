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
struct usb_ether {int /*<<< orphan*/  ue_mtx; int /*<<< orphan*/  ue_tq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

uint8_t
FUNC2(struct usb_ether *ue, unsigned int _ticks)
{
	if (FUNC1(&ue->ue_tq)) {
		/* nothing to do */
		return (1);
	}
	FUNC0(ue->ue_mtx, _ticks);
	return (0);
}