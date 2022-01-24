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
typedef  int /*<<< orphan*/  uint8_t ;
struct usb_bus {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (struct usb_bus*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_bus*,int /*<<< orphan*/ ) ; 

void
FUNC2(struct usb_bus *bus, const uint8_t *ptr, uint8_t len)
{
	FUNC0(bus, MA_OWNED);

	FUNC1(bus, 0);
}