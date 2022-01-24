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
struct resource_list {int dummy; } ;
struct bhnd_usb_devinfo {struct resource_list sdi_rl; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct bhnd_usb_devinfo* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct resource_list *
FUNC1(device_t dev, device_t child)
{
	struct bhnd_usb_devinfo	*sdi;

	sdi = FUNC0(child);

	return (&sdi->sdi_rl);
}