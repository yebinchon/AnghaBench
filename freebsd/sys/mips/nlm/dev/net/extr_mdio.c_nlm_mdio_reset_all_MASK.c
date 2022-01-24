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
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  BLOCK_7 ; 
 int /*<<< orphan*/  LANE_CFG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2(uint64_t nae_base)
{
	/* reset internal MDIO */
	FUNC1(nae_base, 0, BLOCK_7, LANE_CFG);
	/* reset external MDIO */
	FUNC0(nae_base, 0, BLOCK_7, LANE_CFG);
	FUNC0(nae_base, 1, BLOCK_7, LANE_CFG);
}