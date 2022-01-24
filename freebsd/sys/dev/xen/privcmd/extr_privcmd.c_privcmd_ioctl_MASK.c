#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int xen_ulong_t ;
typedef  int xen_pfn_t ;
typedef  int /*<<< orphan*/  vm_prot_t ;
typedef  int /*<<< orphan*/  vm_pindex_t ;
typedef  TYPE_5__* vm_object_t ;
typedef  int /*<<< orphan*/ * vm_map_t ;
typedef  TYPE_6__* vm_map_entry_t ;
typedef  int uint16_t ;
struct xen_add_to_physmap_range {int size; int /*<<< orphan*/  errs; int /*<<< orphan*/  gpfns; int /*<<< orphan*/  idxs; int /*<<< orphan*/  foreign_domid; int /*<<< orphan*/  space; int /*<<< orphan*/  domid; } ;
struct thread {TYPE_2__* td_proc; } ;
struct privcmd_map {int* err; int mapped; int /*<<< orphan*/  phys_base_addr; } ;
struct ioctl_privcmd_mmapbatch {int num; int addr; int /*<<< orphan*/ * err; int /*<<< orphan*/ * arr; int /*<<< orphan*/  dom; } ;
struct ioctl_privcmd_hypercall {int retval; int /*<<< orphan*/ * arg; int /*<<< orphan*/  op; } ;
struct cdev {int dummy; } ;
typedef  int /*<<< orphan*/  idxs ;
typedef  int /*<<< orphan*/  errs ;
typedef  scalar_t__ caddr_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_15__ {int start; int end; } ;
struct TYPE_12__ {int /*<<< orphan*/ * ops; } ;
struct TYPE_13__ {TYPE_3__ devp; } ;
struct TYPE_14__ {struct privcmd_map* handle; TYPE_4__ un_pager; int /*<<< orphan*/  type; } ;
struct TYPE_11__ {TYPE_1__* p_vmspace; } ;
struct TYPE_10__ {int /*<<< orphan*/  vm_map; } ;

/* Variables and functions */
 int* FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int*) ; 
 int CPUID_STDEXT_SMAP ; 
 int /*<<< orphan*/  DOMID_SELF ; 
 int EINVAL ; 
 int ENOSYS ; 
 int FUNC2 (int /*<<< orphan*/ ,struct xen_add_to_physmap_range*) ; 
#define  IOCTL_PRIVCMD_HYPERCALL 129 
#define  IOCTL_PRIVCMD_MMAPBATCH 128 
 int KERN_SUCCESS ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_PRIVCMD ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  OBJT_MGTDEVICE ; 
 int PAGE_MASK ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  UINT16_MAX ; 
 int /*<<< orphan*/  VM_PROT_NONE ; 
 int /*<<< orphan*/  XENMAPSPACE_gmfn_foreign ; 
 int /*<<< orphan*/  XENMEM_add_to_physmap_range ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int*,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (int /*<<< orphan*/ *,int*,int) ; 
 int FUNC8 (int*,int /*<<< orphan*/ *,int) ; 
 int cpu_stdext_feature ; 
 int /*<<< orphan*/  FUNC9 (int*,int /*<<< orphan*/ ) ; 
 int* FUNC10 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  privcmd_pg_ops ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int FUNC14 (int /*<<< orphan*/ **,int,int /*<<< orphan*/ ,TYPE_6__**,TYPE_5__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,TYPE_6__*) ; 
 int FUNC16 (int) ; 

__attribute__((used)) static int
FUNC17(struct cdev *dev, unsigned long cmd, caddr_t arg,
	      int mode, struct thread *td)
{
	int error, i;

	switch (cmd) {
	case IOCTL_PRIVCMD_HYPERCALL: {
		struct ioctl_privcmd_hypercall *hcall;

		hcall = (struct ioctl_privcmd_hypercall *)arg;
#ifdef __amd64__
		/*
		 * The hypervisor page table walker will refuse to access
		 * user-space pages if SMAP is enabled, so temporary disable it
		 * while performing the hypercall.
		 */
		if (cpu_stdext_feature & CPUID_STDEXT_SMAP)
			FUNC13();
#endif
		error = FUNC11(hcall->op, hcall->arg[0],
		    hcall->arg[1], hcall->arg[2], hcall->arg[3], hcall->arg[4]);
#ifdef __amd64__
		if (cpu_stdext_feature & CPUID_STDEXT_SMAP)
			FUNC6();
#endif
		if (error >= 0) {
			hcall->retval = error;
			error = 0;
		} else {
			error = FUNC16(error);
			hcall->retval = 0;
		}
		break;
	}
	case IOCTL_PRIVCMD_MMAPBATCH: {
		struct ioctl_privcmd_mmapbatch *mmap;
		vm_map_t map;
		vm_map_entry_t entry;
		vm_object_t mem;
		vm_pindex_t pindex;
		vm_prot_t prot;
		boolean_t wired;
		struct xen_add_to_physmap_range add;
		xen_ulong_t *idxs;
		xen_pfn_t *gpfns;
		int *errs, index;
		struct privcmd_map *umap;
		uint16_t num;

		mmap = (struct ioctl_privcmd_mmapbatch *)arg;

		if ((mmap->num == 0) ||
		    ((mmap->addr & PAGE_MASK) != 0)) {
			error = EINVAL;
			break;
		}

		map = &td->td_proc->p_vmspace->vm_map;
		error = FUNC14(&map, mmap->addr, VM_PROT_NONE, &entry,
		    &mem, &pindex, &prot, &wired);
		if (error != KERN_SUCCESS) {
			error = EINVAL;
			break;
		}
		if ((entry->start != mmap->addr) ||
		    (entry->end != mmap->addr + (mmap->num * PAGE_SIZE))) {
			FUNC15(map, entry);
			error = EINVAL;
			break;
		}
		FUNC15(map, entry);
		if ((mem->type != OBJT_MGTDEVICE) ||
		    (mem->un_pager.devp.ops != &privcmd_pg_ops)) {
			error = EINVAL;
			break;
		}
		umap = mem->handle;

		add.domid = DOMID_SELF;
		add.space = XENMAPSPACE_gmfn_foreign;
		add.foreign_domid = mmap->dom;

		/*
		 * The 'size' field in the xen_add_to_physmap_range only
		 * allows for UINT16_MAX mappings in a single hypercall.
		 */
		num = FUNC3(mmap->num, UINT16_MAX);

		idxs = FUNC10(sizeof(*idxs) * num, M_PRIVCMD, M_WAITOK);
		gpfns = FUNC10(sizeof(*gpfns) * num, M_PRIVCMD, M_WAITOK);
		errs = FUNC10(sizeof(*errs) * num, M_PRIVCMD, M_WAITOK);

		FUNC12(add.idxs, idxs);
		FUNC12(add.gpfns, gpfns);
		FUNC12(add.errs, errs);

		/* Allocate a bitset to store broken page mappings. */
		umap->err = FUNC0(mmap->num, M_PRIVCMD,
		    M_WAITOK | M_ZERO);

		for (index = 0; index < mmap->num; index += num) {
			num = FUNC3(mmap->num - index, UINT16_MAX);
			add.size = num;

			error = FUNC7(&mmap->arr[index], idxs,
			    sizeof(idxs[0]) * num);
			if (error != 0)
				goto mmap_out;

			for (i = 0; i < num; i++)
				gpfns[i] = FUNC4(umap->phys_base_addr +
				    (i + index) * PAGE_SIZE);

			FUNC5(errs, sizeof(*errs) * num);

			error = FUNC2(
			    XENMEM_add_to_physmap_range, &add);
			if (error != 0) {
				error = FUNC16(error);
				goto mmap_out;
			}

			for (i = 0; i < num; i++) {
				if (errs[i] != 0) {
					errs[i] = FUNC16(errs[i]);

					/* Mark the page as invalid. */
					FUNC1(mmap->num, index + i,
					    umap->err);
				}
			}

			error = FUNC8(errs, &mmap->err[index],
			    sizeof(errs[0]) * num);
			if (error != 0)
				goto mmap_out;
		}

		umap->mapped = true;

mmap_out:
		FUNC9(idxs, M_PRIVCMD);
		FUNC9(gpfns, M_PRIVCMD);
		FUNC9(errs, M_PRIVCMD);
		if (!umap->mapped)
			FUNC9(umap->err, M_PRIVCMD);

		break;
	}

	default:
		error = ENOSYS;
		break;
	}

	return (error);
}