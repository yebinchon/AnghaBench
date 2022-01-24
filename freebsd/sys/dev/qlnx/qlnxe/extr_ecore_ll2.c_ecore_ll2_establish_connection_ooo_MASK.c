#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ conn_type; } ;
struct ecore_ll2_info {TYPE_1__ input; } ;
struct ecore_hwfn {int /*<<< orphan*/  p_ooo_info; } ;

/* Variables and functions */
 scalar_t__ ECORE_LL2_TYPE_OOO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*,struct ecore_ll2_info*) ; 

__attribute__((used)) static void
FUNC2(struct ecore_hwfn *p_hwfn,
				   struct ecore_ll2_info *p_ll2_conn)
{
	if (p_ll2_conn->input.conn_type != ECORE_LL2_TYPE_OOO)
		return;

	FUNC0(p_hwfn->p_ooo_info);
	FUNC1(p_hwfn, p_ll2_conn);
}