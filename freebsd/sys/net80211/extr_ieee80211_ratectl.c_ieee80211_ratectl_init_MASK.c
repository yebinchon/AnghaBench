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
struct ieee80211vap {int /*<<< orphan*/  iv_oid; int /*<<< orphan*/  iv_sysctl; TYPE_1__* iv_rate; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* ir_init ) (struct ieee80211vap*) ;} ;

/* Variables and functions */
 int CTLFLAG_MPSAFE ; 
 int CTLFLAG_RD ; 
 int CTLTYPE_STRING ; 
 int /*<<< orphan*/  IEEE80211_RATECTL_AMRR ; 
 size_t IEEE80211_RATECTL_NONE ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,struct ieee80211vap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211vap*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ieee80211_ratectl_sysctl_stats ; 
 TYPE_1__** ratectls ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211vap*) ; 

void
FUNC4(struct ieee80211vap *vap)
{
	if (vap->iv_rate == ratectls[IEEE80211_RATECTL_NONE])
		FUNC2(vap, IEEE80211_RATECTL_AMRR);
	vap->iv_rate->ir_init(vap);

	/* Attach generic stats sysctl */
	FUNC0(vap->iv_sysctl, FUNC1(vap->iv_oid), OID_AUTO,
	    "rate_stats", CTLTYPE_STRING | CTLFLAG_RD | CTLFLAG_MPSAFE, vap,
	    0, ieee80211_ratectl_sysctl_stats, "A", "ratectl node stats");
}