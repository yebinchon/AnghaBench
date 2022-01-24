#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_pindex_t ;
typedef  int /*<<< orphan*/ * vm_page_t ;
typedef  TYPE_2__* vm_object_t ;
struct vnode {scalar_t__ v_type; int /*<<< orphan*/  v_mount; } ;
struct TYPE_11__ {TYPE_2__* tn_aobj; } ;
struct tmpfs_node {int tn_size; TYPE_1__ tn_reg; } ;
struct tmpfs_mount {int /*<<< orphan*/  tm_pages_used; } ;
typedef  int off_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_12__ {scalar_t__ size; } ;

/* Variables and functions */
 int EIO ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int PAGE_MASK ; 
 scalar_t__ PAGE_SIZE ; 
 struct tmpfs_mount* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VM_ALLOC_NOCREAT ; 
 int VM_ALLOC_NORMAL ; 
 int VM_ALLOC_WAITFAIL ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int VM_PAGER_OK ; 
 struct tmpfs_node* FUNC5 (struct vnode*) ; 
 scalar_t__ VREG ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC10 (struct tmpfs_mount*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (TYPE_2__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int FUNC21 (TYPE_2__*,int /*<<< orphan*/ **,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC22 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 

int
FUNC24(struct vnode *vp, off_t newsize, boolean_t ignerr)
{
	struct tmpfs_mount *tmp;
	struct tmpfs_node *node;
	vm_object_t uobj;
	vm_page_t m;
	vm_pindex_t idx, newpages, oldpages;
	off_t oldsize;
	int base, rv;

	FUNC0(vp->v_type == VREG);
	FUNC0(newsize >= 0);

	node = FUNC5(vp);
	uobj = node->tn_reg.tn_aobj;
	tmp = FUNC2(vp->v_mount);

	/*
	 * Convert the old and new sizes to the number of pages needed to
	 * store them.  It may happen that we do not need to do anything
	 * because the last allocated page can accommodate the change on
	 * its own.
	 */
	oldsize = node->tn_size;
	oldpages = FUNC1(oldsize + PAGE_MASK);
	FUNC0(oldpages == uobj->size);
	newpages = FUNC1(newsize + PAGE_MASK);

	if (FUNC6(newpages == oldpages && newsize >= oldsize)) {
		node->tn_size = newsize;
		return (0);
	}

	if (newpages > oldpages &&
	    FUNC10(tmp, newpages - oldpages) == 0)
		return (ENOSPC);

	FUNC3(uobj);
	if (newsize < oldsize) {
		/*
		 * Zero the truncated part of the last page.
		 */
		base = newsize & PAGE_MASK;
		if (base != 0) {
			idx = FUNC1(newsize);
retry:
			m = FUNC16(uobj, idx, VM_ALLOC_NOCREAT);
			if (m != NULL) {
				FUNC0(FUNC12(m));
			} else if (FUNC22(uobj, idx, NULL, NULL)) {
				m = FUNC13(uobj, idx, VM_ALLOC_NORMAL |
				    VM_ALLOC_WAITFAIL);
				if (m == NULL)
					goto retry;
				rv = FUNC21(uobj, &m, 1, NULL,
				    NULL);
				if (rv == VM_PAGER_OK) {
					/*
					 * Since the page was not resident,
					 * and therefore not recently
					 * accessed, immediately enqueue it
					 * for asynchronous laundering.  The
					 * current operation is not regarded
					 * as an access.
					 */
					FUNC18(m);
					FUNC17(m);
					FUNC19(m);
				} else {
					FUNC15(m);
					if (ignerr)
						m = NULL;
					else {
						FUNC4(uobj);
						return (EIO);
					}
				}
			}
			if (m != NULL) {
				FUNC8(m, base, PAGE_SIZE - base);
				FUNC14(m);
				FUNC20(m);
				FUNC23(m);
			}
		}

		/*
		 * Release any swap space and free any whole pages.
		 */
		if (newpages < oldpages) {
			FUNC9(uobj, newpages, oldpages -
			    newpages);
			FUNC11(uobj, newpages, 0, 0);
		}
	}
	uobj->size = newpages;
	FUNC4(uobj);

	FUNC7(&tmp->tm_pages_used, newpages - oldpages);

	node->tn_size = newsize;
	return (0);
}