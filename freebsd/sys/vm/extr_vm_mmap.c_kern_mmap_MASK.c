#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  size_t vm_size_t ;
typedef  int vm_prot_t ;
typedef  size_t vm_offset_t ;
struct vmspace {int /*<<< orphan*/  vm_map; scalar_t__ vm_daddr; scalar_t__ vm_taddr; } ;
struct thread {scalar_t__* td_retval; struct proc* td_proc; } ;
struct proc {scalar_t__ p_osrel; struct vmspace* p_vmspace; } ;
struct file {int dummy; } ;
typedef  scalar_t__ register_t ;
typedef  size_t off_t ;
typedef  int /*<<< orphan*/  cap_rights_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CAP_MMAP ; 
 int /*<<< orphan*/  CAP_MMAP_R ; 
 int /*<<< orphan*/  CAP_MMAP_W ; 
 int /*<<< orphan*/  CAP_MMAP_X ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FALSE ; 
 int MAP_32BIT ; 
 size_t MAP_32BIT_MAX_ADDR ; 
 int MAP_ALIGNED_SUPER ; 
 int MAP_ALIGNMENT_MASK ; 
 int MAP_ALIGNMENT_SHIFT ; 
 int MAP_ANON ; 
 int MAP_EXCL ; 
 int MAP_FIXED ; 
 int MAP_GUARD ; 
 int MAP_HASSEMAPHORE ; 
 int MAP_NOCORE ; 
 int MAP_NOSYNC ; 
 int MAP_PREFAULT_READ ; 
 int MAP_PRIVATE ; 
 int MAP_RESERVED0020 ; 
 int MAP_RESERVED0040 ; 
 int MAP_SHARED ; 
 int MAP_STACK ; 
 int NBBY ; 
 size_t PAGE_MASK ; 
 int PAGE_SHIFT ; 
 int PROT_EXEC ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int PROT_NONE ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 scalar_t__ P_OSREL_MAP_ANON ; 
 scalar_t__ P_OSREL_MAP_FSTRICT ; 
 int /*<<< orphan*/  RLIMIT_DATA ; 
 int /*<<< orphan*/  SV_AOUT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int VM_PROT_NONE ; 
 int _PROT_ALL ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct file*,struct thread*) ; 
 int FUNC8 (struct thread*,int,int /*<<< orphan*/ *,int*,struct file**) ; 
 int FUNC9 (struct file*,int /*<<< orphan*/ *,size_t*,size_t,int,int,int,size_t,struct thread*) ; 
 int FUNC10 (struct proc*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct thread*,int /*<<< orphan*/ ) ; 
 size_t FUNC12 (size_t) ; 
 size_t FUNC13 (int /*<<< orphan*/ *) ; 
 size_t FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *,size_t*,size_t,int,int,int,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,struct thread*) ; 

int
FUNC16(struct thread *td, uintptr_t addr0, size_t len, int prot, int flags,
    int fd, off_t pos)
{
	struct vmspace *vms;
	struct file *fp;
	struct proc *p;
	vm_offset_t addr;
	vm_size_t pageoff, size;
	vm_prot_t cap_maxprot;
	int align, error, max_prot;
	cap_rights_t rights;

	if ((prot & ~(_PROT_ALL | FUNC2(_PROT_ALL))) != 0)
		return (EINVAL);
	max_prot = FUNC3(prot);
	prot = FUNC1(prot);
	if (max_prot != 0 && (max_prot & prot) != prot)
		return (EINVAL);

	p = td->td_proc;

	/*
	 * Always honor PROT_MAX if set.  If not, default to all
	 * permissions unless we're implying maximum permissions.
	 */
	if (max_prot == 0)
		max_prot = FUNC10(p, prot);

	vms = p->p_vmspace;
	fp = NULL;
	FUNC0(fd);
	addr = addr0;

	/*
	 * Ignore old flags that used to be defined but did not do anything.
	 */
	flags &= ~(MAP_RESERVED0020 | MAP_RESERVED0040);
	
	/*
	 * Enforce the constraints.
	 * Mapping of length 0 is only allowed for old binaries.
	 * Anonymous mapping shall specify -1 as filedescriptor and
	 * zero position for new code. Be nice to ancient a.out
	 * binaries and correct pos for anonymous mapping, since old
	 * ld.so sometimes issues anonymous map requests with non-zero
	 * pos.
	 */
	if (!FUNC4(SV_AOUT)) {
		if ((len == 0 && p->p_osrel >= P_OSREL_MAP_ANON) ||
		    ((flags & MAP_ANON) != 0 && (fd != -1 || pos != 0)))
			return (EINVAL);
	} else {
		if ((flags & MAP_ANON) != 0)
			pos = 0;
	}

	if (flags & MAP_STACK) {
		if ((fd != -1) ||
		    ((prot & (PROT_READ | PROT_WRITE)) != (PROT_READ | PROT_WRITE)))
			return (EINVAL);
		flags |= MAP_ANON;
		pos = 0;
	}
	if ((flags & ~(MAP_SHARED | MAP_PRIVATE | MAP_FIXED | MAP_HASSEMAPHORE |
	    MAP_STACK | MAP_NOSYNC | MAP_ANON | MAP_EXCL | MAP_NOCORE |
	    MAP_PREFAULT_READ | MAP_GUARD |
#ifdef MAP_32BIT
	    MAP_32BIT |
#endif
	    MAP_ALIGNMENT_MASK)) != 0)
		return (EINVAL);
	if ((flags & (MAP_EXCL | MAP_FIXED)) == MAP_EXCL)
		return (EINVAL);
	if ((flags & (MAP_SHARED | MAP_PRIVATE)) == (MAP_SHARED | MAP_PRIVATE))
		return (EINVAL);
	if (prot != PROT_NONE &&
	    (prot & ~(PROT_READ | PROT_WRITE | PROT_EXEC)) != 0)
		return (EINVAL);
	if ((flags & MAP_GUARD) != 0 && (prot != PROT_NONE || fd != -1 ||
	    pos != 0 || (flags & ~(MAP_FIXED | MAP_GUARD | MAP_EXCL |
#ifdef MAP_32BIT
	    MAP_32BIT |
#endif
	    MAP_ALIGNMENT_MASK)) != 0))
		return (EINVAL);

	/*
	 * Align the file position to a page boundary,
	 * and save its page offset component.
	 */
	pageoff = (pos & PAGE_MASK);
	pos -= pageoff;

	/* Compute size from len by rounding (on both ends). */
	size = len + pageoff;			/* low end... */
	size = FUNC12(size);		/* hi end */
	/* Check for rounding up to zero. */
	if (len > size)
		return (ENOMEM);

	/* Ensure alignment is at least a page and fits in a pointer. */
	align = flags & MAP_ALIGNMENT_MASK;
	if (align != 0 && align != MAP_ALIGNED_SUPER &&
	    (align >> MAP_ALIGNMENT_SHIFT >= sizeof(void *) * NBBY ||
	    align >> MAP_ALIGNMENT_SHIFT < PAGE_SHIFT))
		return (EINVAL);

	/*
	 * Check for illegal addresses.  Watch out for address wrap... Note
	 * that VM_*_ADDRESS are not constants due to casts (argh).
	 */
	if (flags & MAP_FIXED) {
		/*
		 * The specified address must have the same remainder
		 * as the file offset taken modulo PAGE_SIZE, so it
		 * should be aligned after adjustment by pageoff.
		 */
		addr -= pageoff;
		if (addr & PAGE_MASK)
			return (EINVAL);

		/* Address range must be all in user VM space. */
		if (addr < FUNC14(&vms->vm_map) ||
		    addr + size > FUNC13(&vms->vm_map))
			return (EINVAL);
		if (addr + size < addr)
			return (EINVAL);
#ifdef MAP_32BIT
		if (flags & MAP_32BIT && addr + size > MAP_32BIT_MAX_ADDR)
			return (EINVAL);
	} else if (flags & MAP_32BIT) {
		/*
		 * For MAP_32BIT, override the hint if it is too high and
		 * do not bother moving the mapping past the heap (since
		 * the heap is usually above 2GB).
		 */
		if (addr + size > MAP_32BIT_MAX_ADDR)
			addr = 0;
#endif
	} else {
		/*
		 * XXX for non-fixed mappings where no hint is provided or
		 * the hint would fall in the potential heap space,
		 * place it after the end of the largest possible heap.
		 *
		 * There should really be a pmap call to determine a reasonable
		 * location.
		 */
		if (addr == 0 ||
		    (addr >= FUNC12((vm_offset_t)vms->vm_taddr) &&
		    addr < FUNC12((vm_offset_t)vms->vm_daddr +
		    FUNC11(td, RLIMIT_DATA))))
			addr = FUNC12((vm_offset_t)vms->vm_daddr +
			    FUNC11(td, RLIMIT_DATA));
	}
	if (len == 0) {
		/*
		 * Return success without mapping anything for old
		 * binaries that request a page-aligned mapping of
		 * length 0.  For modern binaries, this function
		 * returns an error earlier.
		 */
		error = 0;
	} else if ((flags & MAP_GUARD) != 0) {
		error = FUNC15(&vms->vm_map, &addr, size, VM_PROT_NONE,
		    VM_PROT_NONE, flags, NULL, pos, FALSE, td);
	} else if ((flags & MAP_ANON) != 0) {
		/*
		 * Mapping blank space is trivial.
		 *
		 * This relies on VM_PROT_* matching PROT_*.
		 */
		error = FUNC15(&vms->vm_map, &addr, size, prot,
		    max_prot, flags, NULL, pos, FALSE, td);
	} else {
		/*
		 * Mapping file, get fp for validation and don't let the
		 * descriptor disappear on us if we block. Check capability
		 * rights, but also return the maximum rights to be combined
		 * with maxprot later.
		 */
		FUNC5(&rights, CAP_MMAP);
		if (prot & PROT_READ)
			FUNC6(&rights, CAP_MMAP_R);
		if ((flags & MAP_SHARED) != 0) {
			if (prot & PROT_WRITE)
				FUNC6(&rights, CAP_MMAP_W);
		}
		if (prot & PROT_EXEC)
			FUNC6(&rights, CAP_MMAP_X);
		error = FUNC8(td, fd, &rights, &cap_maxprot, &fp);
		if (error != 0)
			goto done;
		if ((flags & (MAP_SHARED | MAP_PRIVATE)) == 0 &&
		    p->p_osrel >= P_OSREL_MAP_FSTRICT) {
			error = EINVAL;
			goto done;
		}

		/* This relies on VM_PROT_* matching PROT_*. */
		error = FUNC9(fp, &vms->vm_map, &addr, size, prot,
		    max_prot & cap_maxprot, flags, pos, td);
	}

	if (error == 0)
		td->td_retval[0] = (register_t) (addr + pageoff);
done:
	if (fp)
		FUNC7(fp, td);

	return (error);
}