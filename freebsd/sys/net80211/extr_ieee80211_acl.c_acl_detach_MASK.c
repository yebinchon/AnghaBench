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
struct aclstate {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aclstate*) ; 
 int /*<<< orphan*/  FUNC1 (struct aclstate*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  M_80211_ACL ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211vap*) ; 
 scalar_t__ nrefs ; 

__attribute__((used)) static void
FUNC4(struct ieee80211vap *vap)
{
	struct aclstate *as = vap->iv_as;

	FUNC2(nrefs > 0, ("imbalanced attach/detach"));
	nrefs--;			/* NB: we assume caller locking */

	FUNC3(vap);
	vap->iv_as = NULL;
	FUNC0(as);
	FUNC1(as, M_80211_ACL);
}