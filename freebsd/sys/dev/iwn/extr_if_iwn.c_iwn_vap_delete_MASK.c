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
struct iwn_vap {int dummy; } ;
struct ieee80211vap {int dummy; } ;

/* Variables and functions */
 struct iwn_vap* FUNC0 (struct ieee80211vap*) ; 
 int /*<<< orphan*/  M_80211_VAP ; 
 int /*<<< orphan*/  FUNC1 (struct iwn_vap*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211vap*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211vap*) ; 

__attribute__((used)) static void
FUNC4(struct ieee80211vap *vap)
{
	struct iwn_vap *ivp = FUNC0(vap);

	FUNC2(vap);
	FUNC3(vap);
	FUNC1(ivp, M_80211_VAP);
}