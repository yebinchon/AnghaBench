#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_pindex_t ;
typedef  TYPE_1__* vm_page_t ;
typedef  scalar_t__ vm_paddr_t ;
typedef  scalar_t__ vm_ooffset_t ;
typedef  TYPE_2__* vm_object_t ;
typedef  int /*<<< orphan*/  vm_memattr_t ;
struct netmap_vm_handle_t {struct netmap_priv_d* priv; } ;
struct netmap_priv_d {struct netmap_adapter* np_na; } ;
struct netmap_adapter {int /*<<< orphan*/  nm_mem; } ;
typedef  int /*<<< orphan*/  intmax_t ;
struct TYPE_16__ {int /*<<< orphan*/  memattr; struct netmap_vm_handle_t* handle; } ;
struct TYPE_15__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int PG_FICTITIOUS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int VM_PAGER_FAIL ; 
 int VM_PAGER_OK ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,TYPE_2__*,int /*<<< orphan*/ ,int,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 TYPE_1__* FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC10(vm_object_t object, vm_ooffset_t offset,
	int prot, vm_page_t *mres)
{
	struct netmap_vm_handle_t *vmh = object->handle;
	struct netmap_priv_d *priv = vmh->priv;
	struct netmap_adapter *na = priv->np_na;
	vm_paddr_t paddr;
	vm_page_t page;
	vm_memattr_t memattr;
	vm_pindex_t pidx;

	FUNC4("object %p offset %jd prot %d mres %p",
			object, (intmax_t)offset, prot, mres);
	memattr = object->memattr;
	pidx = FUNC0(offset);
	paddr = FUNC3(na->nm_mem, offset);
	if (paddr == 0)
		return VM_PAGER_FAIL;

	if (((*mres)->flags & PG_FICTITIOUS) != 0) {
		/*
		 * If the passed in result page is a fake page, update it with
		 * the new physical address.
		 */
		page = *mres;
		FUNC8(page, paddr, memattr);
	} else {
		/*
		 * Replace the passed in reqpage page with our own fake page and
		 * free up the all of the original pages.
		 */
#ifndef VM_OBJECT_WUNLOCK	/* FreeBSD < 10.x */
#define VM_OBJECT_WUNLOCK VM_OBJECT_UNLOCK
#define VM_OBJECT_WLOCK	VM_OBJECT_LOCK
#endif /* VM_OBJECT_WUNLOCK */

		FUNC0(object);
		page = FUNC6(paddr, memattr);
		FUNC0(object);
		FUNC5(*mres);
		*mres = page;
		FUNC7(page, object, pidx);
	}
	FUNC9(page);
	return (VM_PAGER_OK);
}