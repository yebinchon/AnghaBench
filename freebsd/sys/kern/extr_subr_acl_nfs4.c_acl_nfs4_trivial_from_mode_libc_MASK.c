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
struct acl {scalar_t__ acl_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct acl*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct acl*,int) ; 

void
FUNC2(struct acl *aclp, int mode, int canonical_six)
{

	aclp->acl_cnt = 0;
	if (canonical_six)
		FUNC0(aclp, mode, -1);
	else
		FUNC1(aclp, mode);
}