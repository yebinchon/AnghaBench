#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_pindex_t ;
typedef  TYPE_1__* vm_page_t ;
typedef  int /*<<< orphan*/  vm_object_t ;
struct sf_buf {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  pindex; } ;

/* Variables and functions */
 int DMAR_PGF_ALLOC ; 
 int DMAR_PGF_OBJL ; 
 int DMAR_PGF_WAITOK ; 
 int SFB_CPUPRIVATE ; 
 int SFB_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 struct sf_buf* FUNC7 (TYPE_1__*,int) ; 
 scalar_t__ FUNC8 (struct sf_buf*) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void *
FUNC10(vm_object_t obj, vm_pindex_t idx, int flags,
    struct sf_buf **sf)
{
	vm_page_t m;
	bool allocated;

	if ((flags & DMAR_PGF_OBJL) == 0)
		FUNC1(obj);
	m = FUNC9(obj, idx);
	if (m == NULL && (flags & DMAR_PGF_ALLOC) != 0) {
		m = FUNC3(obj, idx, flags | DMAR_PGF_OBJL);
		allocated = true;
	} else
		allocated = false;
	if (m == NULL) {
		if ((flags & DMAR_PGF_OBJL) == 0)
			FUNC2(obj);
		return (NULL);
	}
	/* Sleepable allocations cannot fail. */
	if ((flags & DMAR_PGF_WAITOK) != 0)
		FUNC2(obj);
	FUNC5();
	*sf = FUNC7(m, SFB_CPUPRIVATE | ((flags & DMAR_PGF_WAITOK)
	    == 0 ? SFB_NOWAIT : 0));
	if (*sf == NULL) {
		FUNC6();
		if (allocated) {
			FUNC0(obj);
			FUNC4(obj, m->pindex, flags | DMAR_PGF_OBJL);
		}
		if ((flags & DMAR_PGF_OBJL) == 0)
			FUNC2(obj);
		return (NULL);
	}
	if ((flags & (DMAR_PGF_WAITOK | DMAR_PGF_OBJL)) ==
	    (DMAR_PGF_WAITOK | DMAR_PGF_OBJL))
		FUNC1(obj);
	else if ((flags & (DMAR_PGF_WAITOK | DMAR_PGF_OBJL)) == 0)
		FUNC2(obj);
	return ((void *)FUNC8(*sf));
}