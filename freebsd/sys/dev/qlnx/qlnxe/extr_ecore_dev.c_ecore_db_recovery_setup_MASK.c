#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ db_recovery_counter; int /*<<< orphan*/  lock; int /*<<< orphan*/  list; } ;
struct ecore_hwfn {TYPE_1__ db_recovery_info; TYPE_2__* p_dev; } ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_4__ {int /*<<< orphan*/  db_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*,int /*<<< orphan*/ ,char*) ; 
 int ECORE_INVAL ; 
 int /*<<< orphan*/  ECORE_MSG_SPQ ; 
 int ECORE_NOMEM ; 
 int ECORE_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct ecore_hwfn*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static enum _ecore_status_t FUNC5(struct ecore_hwfn *p_hwfn)
{
	FUNC1(p_hwfn, ECORE_MSG_SPQ, "Setting up db recovery\n");

	/* make sure db_size was set in p_dev */
	if (!p_hwfn->p_dev->db_size) {
		FUNC0(p_hwfn->p_dev, "db_size not set\n");
		return ECORE_INVAL;
	}

	FUNC2(&p_hwfn->db_recovery_info.list);
#ifdef CONFIG_ECORE_LOCK_ALLOC
	if (OSAL_SPIN_LOCK_ALLOC(p_hwfn, &p_hwfn->db_recovery_info.lock))
		return ECORE_NOMEM;
#endif
	FUNC4(&p_hwfn->db_recovery_info.lock);
	p_hwfn->db_recovery_info.db_recovery_counter = 0;

	return ECORE_SUCCESS;
}