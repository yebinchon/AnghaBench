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
struct bwn_mac {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BWN_NPHY_RFCTL_CMD ; 
 int BWN_NPHY_RFCTL_CMD_CHIP0PU ; 
 int BWN_NPHY_RFCTL_CMD_OEPORFORCE ; 
 int BWN_NPHY_RFCTL_CMD_PORFORCE ; 
 int /*<<< orphan*/  FUNC0 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct bwn_mac *mac)
{
	FUNC0(mac, BWN_NPHY_RFCTL_CMD,
		     ~BWN_NPHY_RFCTL_CMD_PORFORCE);
	FUNC1(mac, BWN_NPHY_RFCTL_CMD,
		    BWN_NPHY_RFCTL_CMD_CHIP0PU |
		    BWN_NPHY_RFCTL_CMD_OEPORFORCE);
	FUNC1(mac, BWN_NPHY_RFCTL_CMD,
		    BWN_NPHY_RFCTL_CMD_PORFORCE);
}