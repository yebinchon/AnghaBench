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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MII_ATH_DBG_ADDR ; 
 int /*<<< orphan*/  MII_ATH_DBG_DATA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void
FUNC2(device_t dev, int phy, uint16_t dbg_addr,
    uint16_t dbg_data)
{
	(void) FUNC0(FUNC1(dev), phy,
	    MII_ATH_DBG_ADDR, dbg_addr);
	(void) FUNC0(FUNC1(dev), phy,
	    MII_ATH_DBG_DATA, dbg_data);
}