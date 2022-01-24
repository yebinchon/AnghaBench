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
struct ieee80211_node {int /*<<< orphan*/  ni_vap; } ;
struct ieee80211_frame {int /*<<< orphan*/  i_addr2; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_MSG_ANY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,char const*,int) ; 
 int IEEE80211_RATE_VAL ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_node*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IEEE80211_STATUS_BASIC_RATE ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_node*) ; 

__attribute__((used)) static void
FUNC3(struct ieee80211_node *ni, const struct ieee80211_frame *wh,
	int reassoc, int resp, const char *tag, int rate)
{
	FUNC0(ni->ni_vap, IEEE80211_MSG_ANY, wh->i_addr2,
	    "deny %s request, %s rate set mismatch, rate/MCS %d",
	    reassoc ? "reassoc" : "assoc", tag, rate & IEEE80211_RATE_VAL);
	FUNC1(ni, resp, IEEE80211_STATUS_BASIC_RATE);
	FUNC2(ni);
}