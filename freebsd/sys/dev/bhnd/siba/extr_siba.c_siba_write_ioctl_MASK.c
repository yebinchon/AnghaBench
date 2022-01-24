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
typedef  int uint32_t ;
typedef  int uint16_t ;
struct siba_devinfo {struct bhnd_resource** cfg_res; } ;
struct bhnd_resource {int dummy; } ;
typedef  scalar_t__ device_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  SIBA_CFG0_TMSTATELOW ; 
 int SIBA_TML_SICF_MASK ; 
 int SIBA_TML_SICF_SHIFT ; 
 struct siba_devinfo* FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,struct siba_devinfo*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int
FUNC3(device_t dev, device_t child, uint16_t value, uint16_t mask)
{
	struct siba_devinfo	*dinfo;
	struct bhnd_resource	*r;
	uint32_t		 ts_low, ts_mask;

	if (FUNC1(child) != dev)
		return (EINVAL);

	/* Fetch CFG0 mapping */
	dinfo = FUNC0(child);
	if ((r = dinfo->cfg_res[0]) == NULL)
		return (ENODEV);

	/* Mask and set TMSTATELOW core flag bits */
	ts_mask = (mask << SIBA_TML_SICF_SHIFT) & SIBA_TML_SICF_MASK;
	ts_low = (value << SIBA_TML_SICF_SHIFT) & ts_mask;

	FUNC2(child, dinfo, SIBA_CFG0_TMSTATELOW,
	    ts_low, ts_mask);
	return (0);
}