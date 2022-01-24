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
 int /*<<< orphan*/  BWN_PHY_AFE_DDFS ; 
 int /*<<< orphan*/  BWN_PHY_AFE_DDFS_INCR_INIT ; 
 int /*<<< orphan*/  BWN_PHY_AFE_DDFS_POINTER_INIT ; 
 int /*<<< orphan*/  BWN_PHY_LP_PHY_CTL ; 
 int /*<<< orphan*/  FUNC0 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bwn_mac*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bwn_mac*) ; 

__attribute__((used)) static void
FUNC4(struct bwn_mac *mac, int i_on, int q_on,
    int incr1, int incr2, int scale_idx)
{

	FUNC3(mac);
	FUNC0(mac, BWN_PHY_AFE_DDFS_POINTER_INIT, 0xff80);
	FUNC0(mac, BWN_PHY_AFE_DDFS_POINTER_INIT, 0x80ff);
	FUNC2(mac, BWN_PHY_AFE_DDFS_INCR_INIT, 0xff80, incr1);
	FUNC2(mac, BWN_PHY_AFE_DDFS_INCR_INIT, 0x80ff, incr2 << 8);
	FUNC2(mac, BWN_PHY_AFE_DDFS, 0xfff7, i_on << 3);
	FUNC2(mac, BWN_PHY_AFE_DDFS, 0xffef, q_on << 4);
	FUNC2(mac, BWN_PHY_AFE_DDFS, 0xff9f, scale_idx << 5);
	FUNC0(mac, BWN_PHY_AFE_DDFS, 0xfffb);
	FUNC1(mac, BWN_PHY_AFE_DDFS, 0x2);
	FUNC1(mac, BWN_PHY_LP_PHY_CTL, 0x20);
}