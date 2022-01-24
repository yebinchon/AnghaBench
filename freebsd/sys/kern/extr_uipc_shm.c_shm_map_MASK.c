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
typedef  size_t vm_offset_t ;
typedef  int /*<<< orphan*/  vm_object_t ;
struct shmfd {scalar_t__ shm_size; int /*<<< orphan*/  shm_kmappings; int /*<<< orphan*/  shm_object; } ;
struct file {scalar_t__ f_type; struct shmfd* f_data; } ;
typedef  scalar_t__ off_t ;

/* Variables and functions */
 scalar_t__ DTYPE_SHM ; 
 int EINVAL ; 
 int KERN_SUCCESS ; 
 scalar_t__ PAGE_MASK ; 
 int /*<<< orphan*/  VMFS_OPTIMAL_SPACE ; 
 int VM_MAP_WIRE_NOHOLES ; 
 int VM_MAP_WIRE_SYSTEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int VM_PROT_READ ; 
 int VM_PROT_WRITE ; 
 int /*<<< orphan*/  kernel_map ; 
 scalar_t__ FUNC2 (size_t) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,size_t*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,size_t,size_t) ; 
 int FUNC7 (int /*<<< orphan*/ ,size_t,size_t,int) ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

int
FUNC11(struct file *fp, size_t size, off_t offset, void **memp)
{
	struct shmfd *shmfd;
	vm_offset_t kva, ofs;
	vm_object_t obj;
	int rv;

	if (fp->f_type != DTYPE_SHM)
		return (EINVAL);
	shmfd = fp->f_data;
	obj = shmfd->shm_object;
	FUNC0(obj);
	/*
	 * XXXRW: This validation is probably insufficient, and subject to
	 * sign errors.  It should be fixed.
	 */
	if (offset >= shmfd->shm_size ||
	    offset + size > FUNC2(shmfd->shm_size)) {
		FUNC1(obj);
		return (EINVAL);
	}

	shmfd->shm_kmappings++;
	FUNC10(obj);
	FUNC1(obj);

	/* Map the object into the kernel_map and wire it. */
	kva = FUNC5(kernel_map);
	ofs = offset & PAGE_MASK;
	offset = FUNC3(offset);
	size = FUNC2(size + ofs);
	rv = FUNC4(kernel_map, obj, offset, &kva, size, 0,
	    VMFS_OPTIMAL_SPACE, VM_PROT_READ | VM_PROT_WRITE,
	    VM_PROT_READ | VM_PROT_WRITE, 0);
	if (rv == KERN_SUCCESS) {
		rv = FUNC7(kernel_map, kva, kva + size,
		    VM_MAP_WIRE_SYSTEM | VM_MAP_WIRE_NOHOLES);
		if (rv == KERN_SUCCESS) {
			*memp = (void *)(kva + ofs);
			return (0);
		}
		FUNC6(kernel_map, kva, kva + size);
	} else
		FUNC9(obj);

	/* On failure, drop our mapping reference. */
	FUNC0(obj);
	shmfd->shm_kmappings--;
	FUNC1(obj);

	return (FUNC8(rv));
}