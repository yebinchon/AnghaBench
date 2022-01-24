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
struct ieee80211_tx_ampdu {int txa_token; int /*<<< orphan*/  txa_wnd; int /*<<< orphan*/  txa_flags; } ;
struct ieee80211_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_AGGR_BAWMAX ; 
 int /*<<< orphan*/  IEEE80211_AGGR_IMMEDIATE ; 
 int /*<<< orphan*/  IEEE80211_BAPS_BUFSIZ ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_tx_ampdu*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct ieee80211_node *ni,
	struct ieee80211_tx_ampdu *tap,
	int dialogtoken, int baparamset, int batimeout)
{
	int bufsiz;

	/* XXX locking */
	tap->txa_token = dialogtoken;
	tap->txa_flags |= IEEE80211_AGGR_IMMEDIATE;
	bufsiz = FUNC0(baparamset, IEEE80211_BAPS_BUFSIZ);
	tap->txa_wnd = (bufsiz == 0) ?
	    IEEE80211_AGGR_BAWMAX : FUNC2(bufsiz, IEEE80211_AGGR_BAWMAX);
	FUNC1(tap);
	return 1;
}