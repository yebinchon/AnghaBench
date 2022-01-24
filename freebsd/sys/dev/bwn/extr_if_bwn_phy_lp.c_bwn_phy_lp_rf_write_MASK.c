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
typedef  int uint16_t ;
struct bwn_mac {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BWN_RFCTL ; 
 int /*<<< orphan*/  BWN_RFDATALO ; 
 int /*<<< orphan*/  FUNC0 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 

void
FUNC2(struct bwn_mac *mac, uint16_t reg, uint16_t value)
{

	FUNC1(reg != 1, ("unaccessible register %d", reg));
	FUNC0(mac, BWN_RFCTL, reg);
	FUNC0(mac, BWN_RFDATALO, value);
}