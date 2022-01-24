#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct mdio_ops {int (* write ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ;} ;
typedef  int /*<<< orphan*/  adapter_t ;
struct TYPE_2__ {struct mdio_ops* mdio_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  ELMR_ADDR ; 
 int /*<<< orphan*/  ELMR_DATA_HI ; 
 int /*<<< orphan*/  ELMR_DATA_LO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ELMR_MDIO_ADDR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const) ; 

int FUNC6(adapter_t *adap, int start, const u32 *vals, int n)
{
	int ret;
	const struct mdio_ops *mo = FUNC2(adap)->mdio_ops;

	FUNC0(adap);
	ret = mo->write(adap, ELMR_MDIO_ADDR, 0, ELMR_ADDR, start);
	for ( ; !ret && n; n--, vals++) {
		ret = mo->write(adap, ELMR_MDIO_ADDR, 0, ELMR_DATA_LO,
				*vals & 0xffff);
		if (!ret)
			ret = mo->write(adap, ELMR_MDIO_ADDR, 0, ELMR_DATA_HI,
					*vals >> 16);
	}
	FUNC1(adap);
	return ret;
}