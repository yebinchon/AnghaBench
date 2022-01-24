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
typedef  enum n_rssi_type { ____Placeholder_n_rssi_type } n_rssi_type ;

/* Variables and functions */
 int /*<<< orphan*/  BWN_NPHY_AFECTL_C1 ; 
 int /*<<< orphan*/  BWN_NPHY_AFECTL_C2 ; 
 int /*<<< orphan*/  BWN_NPHY_AFECTL_OVER ; 
 int /*<<< orphan*/  BWN_NPHY_RFCTL_CMD ; 
 int BWN_NPHY_RFCTL_CMD_CORESEL ; 
 int BWN_NPHY_RFCTL_CMD_CORESEL_SHIFT ; 
 int BWN_NPHY_RFCTL_CMD_RXEN ; 
 int BWN_NPHY_RFCTL_CMD_START ; 
 int /*<<< orphan*/  BWN_NPHY_RFCTL_OVER ; 
 int /*<<< orphan*/  BWN_NPHY_RFCTL_RSSIO1 ; 
 int /*<<< orphan*/  BWN_NPHY_RFCTL_RSSIO2 ; 
 int /*<<< orphan*/  FUNC0 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bwn_mac*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bwn_mac*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
#define  N_RSSI_IQ 132 
#define  N_RSSI_NB 131 
#define  N_RSSI_TBD 130 
#define  N_RSSI_W1 129 
#define  N_RSSI_W2 128 

__attribute__((used)) static void FUNC4(struct bwn_mac *mac, uint8_t code,
				      enum n_rssi_type rssi_type)
{
	uint16_t val;
	bool rssi_w1_w2_nb = false;

	switch (rssi_type) {
	case N_RSSI_W1:
	case N_RSSI_W2:
	case N_RSSI_NB:
		val = 0;
		rssi_w1_w2_nb = true;
		break;
	case N_RSSI_TBD:
		val = 1;
		break;
	case N_RSSI_IQ:
		val = 2;
		break;
	default:
		val = 3;
	}

	val = (val << 12) | (val << 14);
	FUNC2(mac, BWN_NPHY_AFECTL_C1, 0x0FFF, val);
	FUNC2(mac, BWN_NPHY_AFECTL_C2, 0x0FFF, val);

	if (rssi_w1_w2_nb) {
		FUNC2(mac, BWN_NPHY_RFCTL_RSSIO1, 0xFFCF,
				(rssi_type + 1) << 4);
		FUNC2(mac, BWN_NPHY_RFCTL_RSSIO2, 0xFFCF,
				(rssi_type + 1) << 4);
	}

	if (code == 0) {
		FUNC0(mac, BWN_NPHY_AFECTL_OVER, ~0x3000);
		if (rssi_w1_w2_nb) {
			FUNC0(mac, BWN_NPHY_RFCTL_CMD,
				~(BWN_NPHY_RFCTL_CMD_RXEN |
				  BWN_NPHY_RFCTL_CMD_CORESEL));
			FUNC0(mac, BWN_NPHY_RFCTL_OVER,
				~(0x1 << 12 |
				  0x1 << 5 |
				  0x1 << 1 |
				  0x1));
			FUNC0(mac, BWN_NPHY_RFCTL_CMD,
				~BWN_NPHY_RFCTL_CMD_START);
			FUNC3(20);
			FUNC0(mac, BWN_NPHY_RFCTL_OVER, ~0x1);
		}
	} else {
		FUNC1(mac, BWN_NPHY_AFECTL_OVER, 0x3000);
		if (rssi_w1_w2_nb) {
			FUNC2(mac, BWN_NPHY_RFCTL_CMD,
				~(BWN_NPHY_RFCTL_CMD_RXEN |
				  BWN_NPHY_RFCTL_CMD_CORESEL),
				(BWN_NPHY_RFCTL_CMD_RXEN |
				 code << BWN_NPHY_RFCTL_CMD_CORESEL_SHIFT));
			FUNC1(mac, BWN_NPHY_RFCTL_OVER,
				(0x1 << 12 |
				  0x1 << 5 |
				  0x1 << 1 |
				  0x1));
			FUNC1(mac, BWN_NPHY_RFCTL_CMD,
				BWN_NPHY_RFCTL_CMD_START);
			FUNC3(20);
			FUNC0(mac, BWN_NPHY_RFCTL_OVER, ~0x1);
		}
	}
}