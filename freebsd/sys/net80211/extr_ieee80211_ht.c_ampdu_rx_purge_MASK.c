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
struct ieee80211_rx_ampdu {int rxa_wnd; scalar_t__ rxa_qframes; scalar_t__ rxa_qbytes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_rx_ampdu*,int) ; 

__attribute__((used)) static void
FUNC2(struct ieee80211_rx_ampdu *rap)
{
	int i;

	for (i = 0; i < rap->rxa_wnd; i++) {
		FUNC1(rap, i);
		if (rap->rxa_qframes == 0)
			break;
	}
	FUNC0(rap->rxa_qbytes == 0 && rap->rxa_qframes == 0,
	    ("lost %u data, %u frames on ampdu rx q",
	    rap->rxa_qbytes, rap->rxa_qframes));
}