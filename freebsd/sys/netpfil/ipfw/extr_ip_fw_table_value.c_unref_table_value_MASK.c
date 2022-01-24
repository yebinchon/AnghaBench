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
typedef  size_t uint32_t ;
struct table_value {scalar_t__ refcnt; } ;
struct table_val_link {int /*<<< orphan*/  no; } ;
struct namedobj_instance {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  M_IPFW ; 
 int /*<<< orphan*/  FUNC1 (struct table_val_link*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct namedobj_instance*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct namedobj_instance*,size_t) ; 
 scalar_t__ FUNC4 (struct namedobj_instance*,size_t) ; 

__attribute__((used)) static void
FUNC5(struct namedobj_instance *vi, struct table_value *pval,
    uint32_t kidx)
{
	struct table_val_link *ptvl;

	FUNC0(pval[kidx].refcnt > 0, ("Refcount is 0 on kidx %d", kidx));
	if (--pval[kidx].refcnt > 0)
		return;

	/* Last reference, delete item */
	ptvl = (struct table_val_link *)FUNC4(vi, kidx);
	FUNC0(ptvl != NULL, ("lookup on value kidx %d failed", kidx));
	FUNC2(vi, &ptvl->no);
	FUNC3(vi, kidx);
	FUNC1(ptvl, M_IPFW);
}