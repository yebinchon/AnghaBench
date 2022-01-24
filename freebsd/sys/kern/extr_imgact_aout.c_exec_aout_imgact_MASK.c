#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned long vm_offset_t ;
typedef  int /*<<< orphan*/ * vm_object_t ;
typedef  int /*<<< orphan*/ * vm_map_t ;
struct vmspace {unsigned long vm_tsize; unsigned long vm_dsize; void* vm_daddr; void* vm_taddr; int /*<<< orphan*/  vm_map; } ;
struct image_params {unsigned long entry_addr; TYPE_2__* proc; scalar_t__ interpreted; int /*<<< orphan*/  vp; int /*<<< orphan*/ * object; TYPE_1__* attr; int /*<<< orphan*/  ps_strings; scalar_t__ image_header; } ;
struct exec {int a_midmag; long a_text; unsigned long a_entry; int a_data; int /*<<< orphan*/  a_bss; } ;
typedef  void* caddr_t ;
struct TYPE_10__ {int /*<<< orphan*/  sv_psstrings; } ;
struct TYPE_9__ {TYPE_4__* p_sysent; struct vmspace* p_vmspace; } ;
struct TYPE_8__ {unsigned long va_size; } ;

/* Variables and functions */
 int EFAULT ; 
 int ENOMEM ; 
 int LK_RETRY ; 
 int LK_SHARED ; 
 int MAP_COPY_ON_WRITE ; 
 int MAP_PREFAULT ; 
 int MAP_VN_EXEC ; 
 int /*<<< orphan*/  MID_ZERO ; 
 int /*<<< orphan*/  FUNC0 (struct exec const) ; 
 int PAGE_MASK ; 
 unsigned long PAGE_SHIFT ; 
 unsigned long PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
#define  QMAGIC 129 
 int /*<<< orphan*/  RACCT_DATA ; 
 int /*<<< orphan*/  RLIMIT_DATA ; 
 unsigned long UINT_MAX ; 
 int VM_PROT_ALL ; 
 int VM_PROT_EXECUTE ; 
 int VM_PROT_READ ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  ZMAGIC 128 
 TYPE_4__ aout_sysvec ; 
 int FUNC5 (struct image_params*,TYPE_4__*) ; 
 unsigned long FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 unsigned long maxtsiz ; 
 int FUNC7 (int) ; 
 scalar_t__ FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long FUNC9 (int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long,unsigned long,unsigned long,int,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC16(struct image_params *imgp)
{
	const struct exec *a_out = (const struct exec *) imgp->image_header;
	struct vmspace *vmspace;
	vm_map_t map;
	vm_object_t object;
	vm_offset_t text_end, data_end;
	unsigned long virtual_offset;
	unsigned long file_offset;
	unsigned long bss_size;
	int error;

	/*
	 * Linux and *BSD binaries look very much alike,
	 * only the machine id is different:
	 * 0x64 for Linux, 0x86 for *BSD, 0x00 for BSDI.
	 * NetBSD is in network byte order.. ugh.
	 */
	if (((a_out->a_midmag >> 16) & 0xff) != 0x86 &&
	    ((a_out->a_midmag >> 16) & 0xff) != 0 &&
	    ((((int)FUNC7(a_out->a_midmag)) >> 16) & 0xff) != 0x86)
                return -1;

	/*
	 * Set file/virtual offset based on a.out variant.
	 *	We do two cases: host byte order and network byte order
	 *	(for NetBSD compatibility)
	 */
	switch ((int)(a_out->a_midmag & 0xffff)) {
	case ZMAGIC:
		virtual_offset = 0;
		if (a_out->a_text) {
			file_offset = PAGE_SIZE;
		} else {
			/* Bill's "screwball mode" */
			file_offset = 0;
		}
		break;
	case QMAGIC:
		virtual_offset = PAGE_SIZE;
		file_offset = 0;
		/* Pass PS_STRINGS for BSD/OS binaries only. */
		if (FUNC0(*a_out) == MID_ZERO)
			imgp->ps_strings = aout_sysvec.sv_psstrings;
		break;
	default:
		/* NetBSD compatibility */
		switch ((int)(FUNC7(a_out->a_midmag) & 0xffff)) {
		case ZMAGIC:
		case QMAGIC:
			virtual_offset = PAGE_SIZE;
			file_offset = 0;
			break;
		default:
			return (-1);
		}
	}

	bss_size = FUNC9(a_out->a_bss, PAGE_SIZE);

	/*
	 * Check various fields in header for validity/bounds.
	 */
	if (/* entry point must lay with text region */
	    a_out->a_entry < virtual_offset ||
	    a_out->a_entry >= virtual_offset + a_out->a_text ||

	    /* text and data size must each be page rounded */
	    a_out->a_text & PAGE_MASK || a_out->a_data & PAGE_MASK

#ifdef __amd64__
	    ||
	    /* overflows */
	    virtual_offset + a_out->a_text + a_out->a_data + bss_size > UINT_MAX
#endif
	    )
		return (-1);

	/* text + data can't exceed file size */
	if (a_out->a_data + a_out->a_text > imgp->attr->va_size)
		return (EFAULT);

	/*
	 * text/data/bss must not exceed limits
	 */
	FUNC1(imgp->proc);
	if (/* text can't exceed maximum text size */
	    a_out->a_text > maxtsiz ||

	    /* data + bss can't exceed rlimit */
	    a_out->a_data + bss_size > FUNC6(imgp->proc, RLIMIT_DATA) ||
	    FUNC8(imgp->proc, RACCT_DATA, a_out->a_data + bss_size) != 0) {
		FUNC2(imgp->proc);
		return (ENOMEM);
	}
	FUNC2(imgp->proc);

	/*
	 * Avoid a possible deadlock if the current address space is destroyed
	 * and that address space maps the locked vnode.  In the common case,
	 * the locked vnode's v_usecount is decremented but remains greater
	 * than zero.  Consequently, the vnode lock is not needed by vrele().
	 * However, in cases where the vnode lock is external, such as nullfs,
	 * v_usecount may become zero.
	 */
	FUNC4(imgp->vp, 0);

	/*
	 * Destroy old process VM and create a new one (with a new stack)
	 */
	error = FUNC5(imgp, &aout_sysvec);

	FUNC15(imgp->vp, LK_SHARED | LK_RETRY);
	if (error)
		return (error);

	/*
	 * The vm space can be changed by exec_new_vmspace
	 */
	vmspace = imgp->proc->p_vmspace;

	object = imgp->object;
	map = &vmspace->vm_map;
	FUNC11(map);
	FUNC14(object);

	text_end = virtual_offset + a_out->a_text;
	error = FUNC10(map, object,
		file_offset,
		virtual_offset, text_end,
		VM_PROT_READ | VM_PROT_EXECUTE, VM_PROT_ALL,
		MAP_COPY_ON_WRITE | MAP_PREFAULT | MAP_VN_EXEC);
	if (error) {
		FUNC12(map);
		FUNC13(object);
		return (error);
	}
	FUNC3(imgp->vp);
	data_end = text_end + a_out->a_data;
	if (a_out->a_data) {
		FUNC14(object);
		error = FUNC10(map, object,
			file_offset + a_out->a_text,
			text_end, data_end,
			VM_PROT_ALL, VM_PROT_ALL,
			MAP_COPY_ON_WRITE | MAP_PREFAULT | MAP_VN_EXEC);
		if (error) {
			FUNC12(map);
			FUNC13(object);
			return (error);
		}
		FUNC3(imgp->vp);
	}

	if (bss_size) {
		error = FUNC10(map, NULL, 0,
			data_end, data_end + bss_size,
			VM_PROT_ALL, VM_PROT_ALL, 0);
		if (error) {
			FUNC12(map);
			return (error);
		}
	}
	FUNC12(map);

	/* Fill in process VM information */
	vmspace->vm_tsize = a_out->a_text >> PAGE_SHIFT;
	vmspace->vm_dsize = (a_out->a_data + bss_size) >> PAGE_SHIFT;
	vmspace->vm_taddr = (caddr_t) (uintptr_t) virtual_offset;
	vmspace->vm_daddr = (caddr_t) (uintptr_t)
			    (virtual_offset + a_out->a_text);

	/* Fill in image_params */
	imgp->interpreted = 0;
	imgp->entry_addr = a_out->a_entry;

	imgp->proc->p_sysent = &aout_sysvec;

	return (0);
}