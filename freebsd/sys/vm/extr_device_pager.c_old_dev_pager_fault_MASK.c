#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_page_t ;
typedef  int /*<<< orphan*/  vm_paddr_t ;
typedef  int /*<<< orphan*/  vm_ooffset_t ;
typedef  TYPE_2__* vm_object_t ;
typedef  int vm_memattr_t ;
struct thread {struct file* td_fpop; } ;
struct file {int dummy; } ;
struct cdevsw {int (* d_mmap ) (struct cdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int*) ;int d_flags; char* d_name; } ;
struct cdev {int dummy; } ;
struct TYPE_17__ {int memattr; struct cdev* handle; } ;
struct TYPE_16__ {int flags; int /*<<< orphan*/  pindex; } ;

/* Variables and functions */
 int D_MEM ; 
 int PG_FICTITIOUS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int VM_PAGER_FAIL ; 
 int VM_PAGER_OK ; 
 struct thread* curthread ; 
 struct cdevsw* FUNC2 (struct cdev*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct cdev*,int) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int FUNC6 (struct cdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 TYPE_1__* FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC13(vm_object_t object, vm_ooffset_t offset, int prot,
    vm_page_t *mres)
{
	vm_paddr_t paddr;
	vm_page_t m_paddr, page;
	struct cdev *dev;
	struct cdevsw *csw;
	struct file *fpop;
	struct thread *td;
	vm_memattr_t memattr, memattr1;
	int ref, ret;

	memattr = object->memattr;

	FUNC1(object);

	dev = object->handle;
	csw = FUNC2(dev, &ref);
	if (csw == NULL) {
		FUNC0(object);
		return (VM_PAGER_FAIL);
	}
	td = curthread;
	fpop = td->td_fpop;
	td->td_fpop = NULL;
	ret = csw->d_mmap(dev, offset, &paddr, prot, &memattr);
	td->td_fpop = fpop;
	FUNC3(dev, ref);
	if (ret != 0) {
		FUNC5(
	    "WARNING: dev_pager_getpage: map function returns error %d", ret);
		FUNC0(object);
		return (VM_PAGER_FAIL);
	}

	/* If "paddr" is a real page, perform a sanity check on "memattr". */
	if ((m_paddr = FUNC12(paddr)) != NULL &&
	    (memattr1 = FUNC4(m_paddr)) != memattr) {
		/*
		 * For the /dev/mem d_mmap routine to return the
		 * correct memattr, pmap_page_get_memattr() needs to
		 * be called, which we do there.
		 */
		if ((csw->d_flags & D_MEM) == 0) {
			FUNC5("WARNING: Device driver %s has set "
			    "\"memattr\" inconsistently (drv %u pmap %u).\n",
			    csw->d_name, memattr, memattr1);
		}
		memattr = memattr1;
	}
	if (((*mres)->flags & PG_FICTITIOUS) != 0) {
		/*
		 * If the passed in result page is a fake page, update it with
		 * the new physical address.
		 */
		page = *mres;
		FUNC0(object);
		FUNC10(page, paddr, memattr);
	} else {
		/*
		 * Replace the passed in reqpage page with our own fake page and
		 * free up the all of the original pages.
		 */
		page = FUNC8(paddr, memattr);
		FUNC0(object);
		FUNC9(page, object, (*mres)->pindex, *mres);
		FUNC7(*mres);
		*mres = page;
	}
	FUNC11(page);
	return (VM_PAGER_OK);
}