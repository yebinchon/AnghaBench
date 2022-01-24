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
typedef  scalar_t__ u32 ;
struct generic_vpd {scalar_t__ offset; } ;
typedef  int /*<<< orphan*/  adapter_t ;

/* Variables and functions */
 scalar_t__ MAX_VPD_BYTES ; 
 int FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 

int FUNC2(adapter_t * adapter, struct generic_vpd *vpd)
{
	u32 len=0, offset;
	int inc, ret;

	offset = vpd->offset;

	while (offset < (vpd->offset + MAX_VPD_BYTES)) {
		ret = FUNC1(adapter, offset);
		if (ret < 0)
			return ret;
		else if (ret == 1)
			break;

		inc = FUNC0(adapter, offset);
		if (inc < 0)
			return inc;
		len += inc;
		offset += inc;
	}
	return (len + 1);
}