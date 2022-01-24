#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int ocd_data; int /*<<< orphan*/ * ocd_str; } ;
typedef  TYPE_1__ nxprtc_compat_data ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_6__ {int ocd_data; } ;

/* Variables and functions */
 int TYPE_NONE ; 
 int TYPE_PCF8563 ; 
 TYPE_1__* compat_data ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const**) ; 
 scalar_t__ FUNC4 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
#ifdef FDT

	return (ofw_bus_search_compatible(dev, compat_data)->ocd_data);
#else
	nxprtc_compat_data *cdata;
	const char *htype;
	int chiptype;

	/*
	 * If given a chiptype hint string, loop through the ofw compat data
	 * comparing the hinted chip type to the compat strings.  The table end
	 * marker ocd_data is TYPE_NONE.
	 */
	if (FUNC3(FUNC0(dev), 
	    FUNC1(dev), "compatible", &htype) == 0) {
		for (cdata = compat_data; cdata->ocd_str != NULL; ++cdata) {
			if (FUNC4(htype, cdata->ocd_str) == 0)
				break;
		}
		chiptype = cdata->ocd_data;
	} else
		chiptype = TYPE_NONE;

	/*
	 * On non-FDT systems the historical behavior of this driver was to
	 * assume a PCF8563; keep doing that for compatibility.
	 */
	if (chiptype == TYPE_NONE)
		return (TYPE_PCF8563);
	else
		return (chiptype);
#endif
}