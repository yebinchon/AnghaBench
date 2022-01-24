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
typedef  int /*<<< orphan*/  adapter_t ;

/* Variables and functions */
 int /*<<< orphan*/  FW_VERS_ADDR ; 
 int /*<<< orphan*/  FW_VERS_ADDR_PRE8 ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ ) ; 

int FUNC1(adapter_t *adapter, u32 *vers)
{
	int ret = FUNC0(adapter, FW_VERS_ADDR, 1, vers, 0);
	if (!ret && *vers != 0xffffffff)
		return 0;
	else
		return FUNC0(adapter, FW_VERS_ADDR_PRE8, 1, vers, 0);
}