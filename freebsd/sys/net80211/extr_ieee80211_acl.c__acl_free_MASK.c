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
struct aclstate {int /*<<< orphan*/  as_nacls; int /*<<< orphan*/  as_list; } ;
struct acl {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aclstate*) ; 
 int /*<<< orphan*/  FUNC1 (struct acl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct acl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_80211_ACL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct acl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  acl_hash ; 
 int /*<<< orphan*/  acl_list ; 

__attribute__((used)) static void
FUNC4(struct aclstate *as, struct acl *acl)
{
	FUNC0(as);

	FUNC3(&as->as_list, acl, acl_list);
	FUNC2(acl, acl_hash);
	FUNC1(acl, M_80211_ACL);
	as->as_nacls--;
}