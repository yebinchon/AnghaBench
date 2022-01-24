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
typedef  int u32 ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_TP_RSS_CONFIG_VRT ; 
 int /*<<< orphan*/  A_TP_RSS_VFH_CONFIG ; 
 int /*<<< orphan*/  A_TP_RSS_VFL_CONFIG ; 
 scalar_t__ CHELSIO_T5 ; 
 int F_KEYWREN ; 
 int F_VFRDEN ; 
 int F_VFRDRG ; 
 int F_VFWREN ; 
 unsigned int M_T6_VFWRADDR ; 
 unsigned int M_VFWRADDR ; 
 int FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned int) ; 
 scalar_t__ FUNC2 (struct adapter*) ; 
 int FUNC3 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,int*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,int /*<<< orphan*/ ,int) ; 

void FUNC6(struct adapter *adapter, unsigned int index,
			   u32 *vfl, u32 *vfh, bool sleep_ok)
{
	u32 vrt, mask, data;

	if (FUNC2(adapter) <= CHELSIO_T5) {
		mask = FUNC1(M_VFWRADDR);
		data = FUNC1(index);
	} else {
		 mask =  FUNC0(M_T6_VFWRADDR);
		 data = FUNC0(index);
	}
	/*
	 * Request that the index'th VF Table values be read into VFL/VFH.
	 */
	vrt = FUNC3(adapter, A_TP_RSS_CONFIG_VRT);
	vrt &= ~(F_VFRDRG | F_VFWREN | F_KEYWREN | mask);
	vrt |= data | F_VFRDEN;
	FUNC5(adapter, A_TP_RSS_CONFIG_VRT, vrt);

	/*
	 * Grab the VFL/VFH values ...
	 */
	FUNC4(adapter, vfl, 1, A_TP_RSS_VFL_CONFIG, sleep_ok);
	FUNC4(adapter, vfh, 1, A_TP_RSS_VFH_CONFIG, sleep_ok);
}