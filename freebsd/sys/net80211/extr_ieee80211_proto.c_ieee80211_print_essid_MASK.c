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
typedef  char uint8_t ;

/* Variables and functions */
 int IEEE80211_NWID_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

void
FUNC1(const uint8_t *essid, int len)
{
	const uint8_t *p;
	int i;

	if (len > IEEE80211_NWID_LEN)
		len = IEEE80211_NWID_LEN;
	/* determine printable or not */
	for (i = 0, p = essid; i < len; i++, p++) {
		if (*p < ' ' || *p > 0x7e)
			break;
	}
	if (i == len) {
		FUNC0("\"");
		for (i = 0, p = essid; i < len; i++, p++)
			FUNC0("%c", *p);
		FUNC0("\"");
	} else {
		FUNC0("0x");
		for (i = 0, p = essid; i < len; i++, p++)
			FUNC0("%02x", *p);
	}
}