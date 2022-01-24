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
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  desc ;

/* Variables and functions */
 int BUS_PROBE_DEFAULT ; 
 int ENXIO ; 
 scalar_t__ VIRTIO_PCI_ABI_VERSION ; 
 scalar_t__ VIRTIO_PCI_DEVICEID_MAX ; 
 scalar_t__ VIRTIO_PCI_DEVICEID_MIN ; 
 scalar_t__ VIRTIO_PCI_VENDORID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char const*) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	char desc[36];
	const char *name;

	if (FUNC4(dev) != VIRTIO_PCI_VENDORID)
		return (ENXIO);

	if (FUNC1(dev) < VIRTIO_PCI_DEVICEID_MIN ||
	    FUNC1(dev) > VIRTIO_PCI_DEVICEID_MAX)
		return (ENXIO);

	if (FUNC2(dev) != VIRTIO_PCI_ABI_VERSION)
		return (ENXIO);

	name = FUNC6(FUNC3(dev));
	if (name == NULL)
		name = "Unknown";

	FUNC5(desc, sizeof(desc), "VirtIO PCI %s adapter", name);
	FUNC0(dev, desc);

	return (BUS_PROBE_DEFAULT);
}