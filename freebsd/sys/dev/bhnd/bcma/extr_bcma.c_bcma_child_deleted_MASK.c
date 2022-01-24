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
struct bhnd_softc {int dummy; } ;
struct bcma_devinfo {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bcma_devinfo*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bcma_devinfo* FUNC2 (int /*<<< orphan*/ ) ; 
 struct bhnd_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(device_t dev, device_t child)
{
	struct bhnd_softc	*sc;
	struct bcma_devinfo	*dinfo;

	sc = FUNC3(dev);

	/* Call required bhnd(4) implementation */
	FUNC1(dev, child);

	/* Free bcma device info */
	if ((dinfo = FUNC2(child)) != NULL)
		FUNC0(dev, child, dinfo);

	FUNC4(child, NULL);
}