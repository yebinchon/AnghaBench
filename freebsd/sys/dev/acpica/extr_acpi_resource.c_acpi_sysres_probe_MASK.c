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
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**,int /*<<< orphan*/ *) ; 
 int ENXIO ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
    static char *sysres_ids[] = { "PNP0C01", "PNP0C02", NULL };
    int rv;

    if (FUNC1("sysresource"))
	return (ENXIO);
    rv = FUNC0(FUNC2(dev), dev, sysres_ids, NULL);
    if (rv > 0){
	return (rv);
    }
    FUNC4(dev, "System Resource");
    FUNC3(dev);
    return (rv);
}