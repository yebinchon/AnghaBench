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
struct ofw_pcibus_devinfo {int /*<<< orphan*/  opd_obdinfo; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct ofw_pcibus_devinfo* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(device_t dev, device_t child)
{
	struct ofw_pcibus_devinfo *dinfo;

	dinfo = FUNC0(child);
	FUNC1(&dinfo->opd_obdinfo);
	FUNC2(dev, child);
}