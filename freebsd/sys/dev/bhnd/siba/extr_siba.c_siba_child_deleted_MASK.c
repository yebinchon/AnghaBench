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
struct siba_devinfo {int dummy; } ;
struct bhnd_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct siba_devinfo* FUNC1 (int /*<<< orphan*/ ) ; 
 struct bhnd_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct siba_devinfo*) ; 

__attribute__((used)) static void
FUNC5(device_t dev, device_t child)
{
	struct bhnd_softc	*sc;
	struct siba_devinfo	*dinfo;

	sc = FUNC2(dev);

	/* Call required bhnd(4) implementation */
	FUNC0(dev, child);

	/* Free siba device info */
	if ((dinfo = FUNC1(child)) != NULL)
		FUNC4(dev, child, dinfo);

	FUNC3(child, NULL);
}