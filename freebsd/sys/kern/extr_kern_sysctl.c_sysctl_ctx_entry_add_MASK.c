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
struct sysctl_ctx_entry {struct sysctl_oid* entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_SYSCTLOID ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct sysctl_ctx_list*,struct sysctl_ctx_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 
 struct sysctl_ctx_entry* FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct sysctl_ctx_entry *
FUNC3(struct sysctl_ctx_list *clist, struct sysctl_oid *oidp)
{
	struct sysctl_ctx_entry *e;

	FUNC0();
	if (clist == NULL || oidp == NULL)
		return(NULL);
	e = FUNC2(sizeof(struct sysctl_ctx_entry), M_SYSCTLOID, M_WAITOK);
	e->entry = oidp;
	FUNC1(clist, e, link);
	return (e);
}