#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * vm_page_t ;
struct sf_buf {int dummy; } ;
struct dmar_unit {int /*<<< orphan*/  ctx_obj; } ;
struct TYPE_4__ {int /*<<< orphan*/  r1; } ;
typedef  TYPE_1__ dmar_root_entry_t ;

/* Variables and functions */
 int DMAR_PGF_NOALLOC ; 
 int DMAR_PGF_WAITOK ; 
 int DMAR_PGF_ZERO ; 
 int DMAR_ROOT_R1_CTP_MASK ; 
 int DMAR_ROOT_R1_P ; 
 int /*<<< orphan*/  TD_PINNED_ASSERT ; 
 int /*<<< orphan*/  TD_PREP_PINNED_ASSERT ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct dmar_unit*,TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct sf_buf**) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sf_buf*) ; 

__attribute__((used)) static void
FUNC6(struct dmar_unit *dmar, int bus)
{
	struct sf_buf *sf;
	dmar_root_entry_t *re;
	vm_page_t ctxm;

	/*
	 * Allocated context page must be linked.
	 */
	ctxm = FUNC3(dmar->ctx_obj, 1 + bus, DMAR_PGF_NOALLOC);
	if (ctxm != NULL)
		return;

	/*
	 * Page not present, allocate and link.  Note that other
	 * thread might execute this sequence in parallel.  This
	 * should be safe, because the context entries written by both
	 * threads are equal.
	 */
	TD_PREP_PINNED_ASSERT;
	ctxm = FUNC3(dmar->ctx_obj, 1 + bus, DMAR_PGF_ZERO |
	    DMAR_PGF_WAITOK);
	re = FUNC2(dmar->ctx_obj, 0, DMAR_PGF_NOALLOC, &sf);
	re += bus;
	FUNC4(&re->r1, DMAR_ROOT_R1_P | (DMAR_ROOT_R1_CTP_MASK &
	    FUNC0(ctxm)));
	FUNC1(dmar, re);
	FUNC5(sf);
	TD_PINNED_ASSERT;
}