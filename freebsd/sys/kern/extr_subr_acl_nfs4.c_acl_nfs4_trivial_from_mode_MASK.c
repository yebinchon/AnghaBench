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
typedef  int /*<<< orphan*/  mode_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct acl*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC1(struct acl *aclp, mode_t mode)
{

	aclp->acl_cnt = 0;
	FUNC0(NULL, aclp, mode, -1, -1);
}