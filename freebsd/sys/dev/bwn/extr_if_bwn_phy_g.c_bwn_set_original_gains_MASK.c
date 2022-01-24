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
struct bwn_phy {int rev; } ;
struct bwn_mac {struct bwn_phy mac_phy; } ;

/* Variables and functions */
 int BWN_OFDMTAB_GAINX ; 
 int BWN_OFDMTAB_GAINX_R1 ; 
 int /*<<< orphan*/  FUNC0 (struct bwn_mac*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bwn_mac*,int,int,int) ; 

__attribute__((used)) static void
FUNC3(struct bwn_mac *mac)
{
	struct bwn_phy *phy = &mac->mac_phy;
	uint16_t i, tmp;
	uint16_t table;
	uint16_t start = 0x0008, end = 0x0018;

	if (phy->rev <= 1) {
		start = 0x0010;
		end = 0x0020;
	}

	table = BWN_OFDMTAB_GAINX;
	if (phy->rev <= 1)
		table = BWN_OFDMTAB_GAINX_R1;
	for (i = 0; i < 4; i++) {
		tmp = (i & 0xfffc);
		tmp |= (i & 0x0001) << 1;
		tmp |= (i & 0x0002) >> 1;

		FUNC2(mac, table, i, tmp);
	}

	for (i = start; i < end; i++)
		FUNC2(mac, table, i, i - start);

	FUNC0(mac, 0x04a0, 0xbfbf, 0x4040);
	FUNC0(mac, 0x04a1, 0xbfbf, 0x4040);
	FUNC0(mac, 0x04a2, 0xbfbf, 0x4000);
	FUNC1(mac, 0, 1);
}