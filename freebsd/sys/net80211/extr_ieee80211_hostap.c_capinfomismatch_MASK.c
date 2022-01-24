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
struct TYPE_2__ {int /*<<< orphan*/  is_rx_assoc_capmismatch; } ;
struct ieee80211vap {TYPE_1__ iv_stats; } ;
struct ieee80211_node {struct ieee80211vap* ni_vap; } ;
struct ieee80211_frame {int /*<<< orphan*/  i_addr2; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_MSG_ANY ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211vap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_node*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IEEE80211_STATUS_CAPINFO ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_node*) ; 

__attribute__((used)) static void
FUNC3(struct ieee80211_node *ni, const struct ieee80211_frame *wh,
	int reassoc, int resp, const char *tag, int capinfo)
{
	struct ieee80211vap *vap = ni->ni_vap;

	FUNC0(vap, IEEE80211_MSG_ANY, wh->i_addr2,
	    "deny %s request, %s mismatch 0x%x",
	    reassoc ? "reassoc" : "assoc", tag, capinfo);
	FUNC1(ni, resp, IEEE80211_STATUS_CAPINFO);
	FUNC2(ni);
	vap->iv_stats.is_rx_assoc_capmismatch++;
}