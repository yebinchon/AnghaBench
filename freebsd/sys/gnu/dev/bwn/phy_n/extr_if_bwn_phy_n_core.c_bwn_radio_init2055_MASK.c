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
struct bwn_mac {scalar_t__ mac_status; } ;

/* Variables and functions */
 scalar_t__ BWN_BAND_5G ; 
 scalar_t__ BWN_MAC_STATUS_INITED ; 
 int /*<<< orphan*/  FUNC0 (struct bwn_mac*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC2 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC3 (struct bwn_mac*) ; 

__attribute__((used)) static void FUNC4(struct bwn_mac *mac)
{
	FUNC3(mac);
	if (mac->mac_status < BWN_MAC_STATUS_INITED) {
		/* Follow wl, not specs. Do not force uploading all regs */
		FUNC0(mac, 0, 0);
	} else {
		bool ghz5 = FUNC1(mac) == BWN_BAND_5G;
		FUNC0(mac, ghz5, 0);
	}
	FUNC2(mac);
}