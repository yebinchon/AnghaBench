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
typedef  int u8 ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_TP_VLAN_PRI_MAP ; 
 int EINVAL ; 
 int FILTER_OPT_LEN ; 
 int S_FCOE ; 
 int S_FRAGMENTATION ; 
 int /*<<< orphan*/  FUNC0 (struct adapter*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,unsigned int*,int,int /*<<< orphan*/ ,int) ; 

int FUNC2(struct adapter *adap, unsigned int mode_map,
		       bool sleep_ok)
{
	static u8 width[] = { 1, 3, 17, 17, 8, 8, 16, 9, 3, 1 };

	int i, nbits = 0;

	for (i = S_FCOE; i <= S_FRAGMENTATION; i++)
		if (mode_map & (1 << i))
			nbits += width[i];
	if (nbits > FILTER_OPT_LEN)
		return -EINVAL;
	FUNC1(adap, &mode_map, 1, A_TP_VLAN_PRI_MAP, sleep_ok);
	FUNC0(adap, sleep_ok);

	return 0;
}