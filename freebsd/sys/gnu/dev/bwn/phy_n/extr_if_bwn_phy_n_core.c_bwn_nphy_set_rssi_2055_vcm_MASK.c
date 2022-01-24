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
struct bwn_mac {int dummy; } ;
typedef  enum n_rssi_type { ____Placeholder_n_rssi_type } n_rssi_type ;

/* Variables and functions */
 int /*<<< orphan*/  B2055_C1_B0NB_RSSIVCM ; 
 int /*<<< orphan*/  B2055_C1_RX_BB_RSSICTL5 ; 
 int /*<<< orphan*/  B2055_C2_B0NB_RSSIVCM ; 
 int /*<<< orphan*/  B2055_C2_RX_BB_RSSICTL5 ; 
 int /*<<< orphan*/  FUNC0 (struct bwn_mac*,int /*<<< orphan*/ ,int,int) ; 
 int N_RSSI_NB ; 

__attribute__((used)) static void FUNC1(struct bwn_mac *mac,
				       enum n_rssi_type rssi_type, uint8_t *buf)
{
	int i;
	for (i = 0; i < 2; i++) {
		if (rssi_type == N_RSSI_NB) {
			if (i == 0) {
				FUNC0(mac, B2055_C1_B0NB_RSSIVCM,
						  0xFC, buf[0]);
				FUNC0(mac, B2055_C1_RX_BB_RSSICTL5,
						  0xFC, buf[1]);
			} else {
				FUNC0(mac, B2055_C2_B0NB_RSSIVCM,
						  0xFC, buf[2 * i]);
				FUNC0(mac, B2055_C2_RX_BB_RSSICTL5,
						  0xFC, buf[2 * i + 1]);
			}
		} else {
			if (i == 0)
				FUNC0(mac, B2055_C1_RX_BB_RSSICTL5,
						  0xF3, buf[0] << 2);
			else
				FUNC0(mac, B2055_C2_RX_BB_RSSICTL5,
						  0xF3, buf[2 * i + 1] << 2);
		}
	}
}