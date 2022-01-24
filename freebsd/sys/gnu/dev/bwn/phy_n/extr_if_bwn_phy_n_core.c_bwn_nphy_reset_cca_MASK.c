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
 int /*<<< orphan*/  BWN_NPHY_BBCFG ; 
 int BWN_NPHY_BBCFG_RSTCCA ; 
 int FUNC0 (struct bwn_mac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  BWN_RFSEQ_RESET2RX ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct bwn_mac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bwn_mac*,int) ; 

__attribute__((used)) static void FUNC5(struct bwn_mac *mac)
{
	uint16_t bbcfg;

	FUNC4(mac, 1);
	bbcfg = FUNC0(mac, BWN_NPHY_BBCFG);
	FUNC1(mac, BWN_NPHY_BBCFG, bbcfg | BWN_NPHY_BBCFG_RSTCCA);
	FUNC2(1);
	FUNC1(mac, BWN_NPHY_BBCFG, bbcfg & ~BWN_NPHY_BBCFG_RSTCCA);
	FUNC4(mac, 0);
	FUNC3(mac, BWN_RFSEQ_RESET2RX);
}