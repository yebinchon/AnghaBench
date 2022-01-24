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

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  device_quiet (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  device_set_desc (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  strcmp (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  xenbus_get_type (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
xbb_probe(device_t dev)
{
 
        if (!strcmp(xenbus_get_type(dev), "vbd")) {
                device_set_desc(dev, "Backend Virtual Block Device");
                device_quiet(dev);
                return (0);
        }

        return (ENXIO);
}