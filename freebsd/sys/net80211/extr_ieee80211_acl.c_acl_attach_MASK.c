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
struct ieee80211vap {struct aclstate* iv_as; } ;
struct aclstate {struct ieee80211vap* as_vap; int /*<<< orphan*/  as_policy; int /*<<< orphan*/  as_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aclstate*,char*) ; 
 int /*<<< orphan*/  ACL_POLICY_OPEN ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int IEEE80211_M_NOWAIT ; 
 int IEEE80211_M_ZERO ; 
 int /*<<< orphan*/  M_80211_ACL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nrefs ; 

__attribute__((used)) static int
FUNC3(struct ieee80211vap *vap)
{
	struct aclstate *as;

	as = (struct aclstate *) FUNC1(sizeof(struct aclstate),
		M_80211_ACL, IEEE80211_M_NOWAIT | IEEE80211_M_ZERO);
	if (as == NULL)
		return 0;
	FUNC0(as, "acl");
	FUNC2(&as->as_list);
	as->as_policy = ACL_POLICY_OPEN;
	as->as_vap = vap;
	vap->iv_as = as;
	nrefs++;			/* NB: we assume caller locking */
	return 1;
}