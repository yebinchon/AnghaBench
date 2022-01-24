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
struct ieee80211vap {struct ieee80211_hwmp_state* iv_hwmp; } ;
struct ieee80211_hwmp_state {int /*<<< orphan*/  hs_roottimer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hwmp_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_80211_VAP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct ieee80211vap *vap)
{
	struct ieee80211_hwmp_state *hs = vap->iv_hwmp;

	FUNC1(&hs->hs_roottimer);
	FUNC0(vap->iv_hwmp, M_80211_VAP);
	vap->iv_hwmp = NULL;
}