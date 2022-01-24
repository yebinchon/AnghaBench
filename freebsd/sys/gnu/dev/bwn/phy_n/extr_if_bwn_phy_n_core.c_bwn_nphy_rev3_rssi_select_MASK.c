#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint16_t ;
struct TYPE_2__ {int rev; } ;
struct bwn_mac {TYPE_1__ mac_phy; } ;
typedef  enum n_rssi_type { ____Placeholder_n_rssi_type } n_rssi_type ;
typedef  scalar_t__ bwn_band_t ;

/* Variables and functions */
 int B2056_TX0 ; 
 int B2056_TX1 ; 
 int B2056_TX_TX_SSI_MUX ; 
 scalar_t__ BWN_BAND_5G ; 
 int BWN_NPHY_AFECTL_C1 ; 
 int BWN_NPHY_AFECTL_C2 ; 
 int BWN_NPHY_AFECTL_OVER ; 
 int BWN_NPHY_AFECTL_OVER1 ; 
 int BWN_NPHY_RFCTL_LUT_TRSW_UP1 ; 
 int BWN_NPHY_RFCTL_LUT_TRSW_UP2 ; 
 int BWN_NPHY_TXF_40CO_B1S0 ; 
 int BWN_NPHY_TXF_40CO_B32S1 ; 
 int /*<<< orphan*/  FUNC0 (struct bwn_mac*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bwn_mac*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bwn_mac*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bwn_mac*,int,int) ; 
 int N_RSSI_IQ ; 
 int N_RSSI_NB ; 
 int N_RSSI_TBD ; 
 int N_RSSI_W1 ; 
 int N_RSSI_W2 ; 
 scalar_t__ FUNC4 (struct bwn_mac*) ; 
 scalar_t__ FUNC5 (struct bwn_mac*) ; 

__attribute__((used)) static void FUNC6(struct bwn_mac *mac, uint8_t code,
				      enum n_rssi_type rssi_type)
{
	uint8_t i;
	uint16_t reg, val;

	if (code == 0) {
		FUNC0(mac, BWN_NPHY_AFECTL_OVER1, 0xFDFF);
		FUNC0(mac, BWN_NPHY_AFECTL_OVER, 0xFDFF);
		FUNC0(mac, BWN_NPHY_AFECTL_C1, 0xFCFF);
		FUNC0(mac, BWN_NPHY_AFECTL_C2, 0xFCFF);
		FUNC0(mac, BWN_NPHY_TXF_40CO_B1S0, 0xFFDF);
		FUNC0(mac, BWN_NPHY_TXF_40CO_B32S1, 0xFFDF);
		FUNC0(mac, BWN_NPHY_RFCTL_LUT_TRSW_UP1, 0xFFC3);
		FUNC0(mac, BWN_NPHY_RFCTL_LUT_TRSW_UP2, 0xFFC3);
	} else {
		for (i = 0; i < 2; i++) {
			if ((code == 1 && i == 1) || (code == 2 && !i))
				continue;

			reg = (i == 0) ?
				BWN_NPHY_AFECTL_OVER1 : BWN_NPHY_AFECTL_OVER;
			FUNC2(mac, reg, 0xFDFF, 0x0200);

			if (rssi_type == N_RSSI_W1 ||
			    rssi_type == N_RSSI_W2 ||
			    rssi_type == N_RSSI_NB) {
				reg = (i == 0) ?
					BWN_NPHY_AFECTL_C1 :
					BWN_NPHY_AFECTL_C2;
				FUNC2(mac, reg, 0xFCFF, 0);

				reg = (i == 0) ?
					BWN_NPHY_RFCTL_LUT_TRSW_UP1 :
					BWN_NPHY_RFCTL_LUT_TRSW_UP2;
				FUNC2(mac, reg, 0xFFC3, 0);

				if (rssi_type == N_RSSI_W1)
					val = (FUNC4(mac) == BWN_BAND_5G) ? 4 : 8;
				else if (rssi_type == N_RSSI_W2)
					val = 16;
				else
					val = 32;
				FUNC1(mac, reg, val);

				reg = (i == 0) ?
					BWN_NPHY_TXF_40CO_B1S0 :
					BWN_NPHY_TXF_40CO_B32S1;
				FUNC1(mac, reg, 0x0020);
			} else {
				if (rssi_type == N_RSSI_TBD)
					val = 0x0100;
				else if (rssi_type == N_RSSI_IQ)
					val = 0x0200;
				else
					val = 0x0300;

				reg = (i == 0) ?
					BWN_NPHY_AFECTL_C1 :
					BWN_NPHY_AFECTL_C2;

				FUNC2(mac, reg, 0xFCFF, val);
				FUNC2(mac, reg, 0xF3FF, val << 2);

				if (rssi_type != N_RSSI_IQ &&
				    rssi_type != N_RSSI_TBD) {
					bwn_band_t band =
						FUNC4(mac);

					if (mac->mac_phy.rev < 7) {
						if (FUNC5(mac))
							val = (band == BWN_BAND_5G) ? 0xC : 0xE;
						else
							val = 0x11;
						reg = (i == 0) ? B2056_TX0 : B2056_TX1;
						reg |= B2056_TX_TX_SSI_MUX;
						FUNC3(mac, reg, val);
					}

					reg = (i == 0) ?
						BWN_NPHY_AFECTL_OVER1 :
						BWN_NPHY_AFECTL_OVER;
					FUNC1(mac, reg, 0x0200);
				}
			}
		}
	}
}