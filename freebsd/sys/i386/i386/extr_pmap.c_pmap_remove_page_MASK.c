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
typedef  int /*<<< orphan*/  vm_offset_t ;
struct spglist {int dummy; } ;
typedef  scalar_t__ pt_entry_t ;
typedef  int /*<<< orphan*/  pmap_t ;
struct TYPE_2__ {scalar_t__ td_pinned; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RA_WLOCKED ; 
 TYPE_1__* curthread ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,struct spglist*) ; 
 int /*<<< orphan*/  pvh_global_lock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(pmap_t pmap, vm_offset_t va, struct spglist *free)
{
	pt_entry_t *pte;

	FUNC5(&pvh_global_lock, RA_WLOCKED);
	FUNC0(curthread->td_pinned > 0, ("curthread not pinned"));
	FUNC1(pmap, MA_OWNED);
	if ((pte = FUNC3(pmap, va)) == NULL || *pte == 0)
		return;
	FUNC4(pmap, pte, va, free);
	FUNC2(pmap, va);
}