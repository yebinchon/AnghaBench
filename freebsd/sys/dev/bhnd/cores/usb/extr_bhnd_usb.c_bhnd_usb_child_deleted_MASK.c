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
struct bhnd_usb_devinfo {int /*<<< orphan*/  sdi_rl; int /*<<< orphan*/  sdi_irq; scalar_t__ sdi_irq_mapped; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bhnd_usb_devinfo* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bhnd_usb_devinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(device_t dev, device_t child)
{
	struct bhnd_usb_devinfo	*dinfo;

	if ((dinfo = FUNC1(child)) == NULL)
		return;

	if (dinfo->sdi_irq_mapped)
		FUNC0(dev, dinfo->sdi_irq);

	FUNC3(&dinfo->sdi_rl);
	FUNC2(dinfo, M_DEVBUF);
}