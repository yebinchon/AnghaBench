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
struct aclstate {int /*<<< orphan*/  as_list; } ;
struct acl {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aclstate*) ; 
 int /*<<< orphan*/  FUNC1 (struct aclstate*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211vap*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  IEEE80211_MSG_ACL ; 
 struct acl* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct aclstate*,struct acl*) ; 

__attribute__((used)) static int
FUNC5(struct ieee80211vap *vap)
{
	struct aclstate *as = vap->iv_as;
	struct acl *acl;

	FUNC2(vap, IEEE80211_MSG_ACL, "ACL: %s\n", "free all");

	FUNC0(as);
	while ((acl = FUNC3(&as->as_list)) != NULL)
		FUNC4(as, acl);
	FUNC1(as);

	return 0;
}