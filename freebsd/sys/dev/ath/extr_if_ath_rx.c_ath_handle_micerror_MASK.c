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
struct ieee80211com {int dummy; } ;
struct ieee80211_node {int /*<<< orphan*/  ni_vap; } ;
struct ieee80211_frame_min {int dummy; } ;
struct ieee80211_frame {int dummy; } ;

/* Variables and functions */
 struct ieee80211_node* FUNC0 (struct ieee80211com*,struct ieee80211_frame_min const*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_node*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ieee80211_frame*,int) ; 

__attribute__((used)) static void
FUNC3(struct ieee80211com *ic,
	struct ieee80211_frame *wh, int keyix)
{
	struct ieee80211_node *ni;

	/* XXX recheck MIC to deal w/ chips that lie */
	/* XXX discard MIC errors on !data frames */
	ni = FUNC0(ic, (const struct ieee80211_frame_min *) wh);
	if (ni != NULL) {
		FUNC2(ni->ni_vap, wh, keyix);
		FUNC1(ni);
	}
}