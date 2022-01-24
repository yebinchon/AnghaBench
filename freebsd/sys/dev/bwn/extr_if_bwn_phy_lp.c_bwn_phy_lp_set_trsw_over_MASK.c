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
typedef  int uint8_t ;
typedef  int uint16_t ;
struct bwn_mac {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BWN_PHY_RF_OVERRIDE_0 ; 
 int /*<<< orphan*/  BWN_PHY_RF_OVERRIDE_VAL_0 ; 
 int /*<<< orphan*/  FUNC0 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bwn_mac*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC2(struct bwn_mac *mac, uint8_t tx, uint8_t rx)
{
	uint16_t trsw = (tx << 1) | rx;

	FUNC1(mac, BWN_PHY_RF_OVERRIDE_VAL_0, 0xfffc, trsw);
	FUNC0(mac, BWN_PHY_RF_OVERRIDE_0, 0x3);
}