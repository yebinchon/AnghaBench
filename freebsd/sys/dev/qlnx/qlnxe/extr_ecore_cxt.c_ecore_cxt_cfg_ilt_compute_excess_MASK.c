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
typedef  int u32 ;
struct ecore_tid_seg {scalar_t__ count; size_t type; } ;
struct TYPE_2__ {int /*<<< orphan*/  val; } ;
struct ecore_ilt_client_cfg {TYPE_1__ p_size; } ;
struct ecore_hwfn {struct ecore_cxt_mngr* p_cxt_mngr; } ;
struct ecore_cxt_mngr {int* task_type_size; struct ecore_ilt_client_cfg* clients; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,char*) ; 
 int /*<<< orphan*/  ECORE_ILT ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*) ; 
 size_t ILT_CLI_CDUT ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int NUM_TASK_PF_SEGMENTS ; 
 int FUNC3 (struct ecore_hwfn*,int /*<<< orphan*/ ) ; 
 struct ecore_tid_seg* FUNC4 (struct ecore_hwfn*,int) ; 

u32 FUNC5(struct ecore_hwfn *p_hwfn, u32 used_lines)
{
	struct ecore_ilt_client_cfg *p_cli;
	u32 excess_lines, available_lines;
	struct ecore_cxt_mngr *p_mngr;
	u32 ilt_page_size, elem_size;
	struct ecore_tid_seg *p_seg;
	int i;

	available_lines = FUNC3(p_hwfn, ECORE_ILT);
	excess_lines = used_lines - available_lines;

	if (!excess_lines)
		return 0;

	if (!FUNC1(p_hwfn))
		return 0;

	p_mngr = p_hwfn->p_cxt_mngr;
	p_cli = &p_mngr->clients[ILT_CLI_CDUT];
	ilt_page_size = FUNC2(p_cli->p_size.val);

	for (i = 0; i < NUM_TASK_PF_SEGMENTS; i++) {
		p_seg = FUNC4(p_hwfn, i);
		if (!p_seg || p_seg->count == 0)
			continue;

		elem_size = p_mngr->task_type_size[p_seg->type];
		if (!elem_size)
			continue;

		return (ilt_page_size / elem_size) * excess_lines;
	}

	FUNC0(p_hwfn, "failed computing excess ILT lines\n");
	return 0;
}