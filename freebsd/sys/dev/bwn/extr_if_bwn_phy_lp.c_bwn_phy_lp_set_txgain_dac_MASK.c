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
 int /*<<< orphan*/  BWN_PHY_AFE_DAC_CTL ; 
 int FUNC0 (struct bwn_mac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bwn_mac*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC2(struct bwn_mac *mac, uint16_t dac)
{
	uint16_t ctl;

	ctl = FUNC0(mac, BWN_PHY_AFE_DAC_CTL) & 0xc7f;
	ctl |= dac << 7;
	FUNC1(mac, BWN_PHY_AFE_DAC_CTL, 0xf000, ctl);
}