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
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct sysctl_ctx_entry {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  M_SYSCTLOID ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct sysctl_ctx_list*,struct sysctl_ctx_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sysctl_ctx_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 
 struct sysctl_ctx_entry* FUNC4 (struct sysctl_ctx_list*,struct sysctl_oid*) ; 

int
FUNC5(struct sysctl_ctx_list *clist, struct sysctl_oid *oidp)
{
	struct sysctl_ctx_entry *e;

	if (clist == NULL || oidp == NULL)
		return (EINVAL);
	FUNC0();
	e = FUNC4(clist, oidp);
	if (e != NULL) {
		FUNC2(clist, e, link);
		FUNC1();
		FUNC3(e, M_SYSCTLOID);
		return (0);
	} else {
		FUNC1();
		return (ENOENT);
	}
}