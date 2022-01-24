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
struct ural_vap {int /*<<< orphan*/  ratectl_task; int /*<<< orphan*/  ratectl_ch; } ;
struct ieee80211vap {struct ieee80211com* iv_ic; } ;
struct ieee80211com {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_80211_VAP ; 
 struct ural_vap* FUNC0 (struct ieee80211vap*) ; 
 int /*<<< orphan*/  FUNC1 (struct ural_vap*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211com*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211vap*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211vap*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct ieee80211vap *vap)
{
	struct ural_vap *uvp = FUNC0(vap);
	struct ieee80211com *ic = vap->iv_ic;

	FUNC5(&uvp->ratectl_ch);
	FUNC2(ic, &uvp->ratectl_task);
	FUNC3(vap);
	FUNC4(vap);
	FUNC1(uvp, M_80211_VAP);
}