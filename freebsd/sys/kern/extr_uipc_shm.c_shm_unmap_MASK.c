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
typedef  int /*<<< orphan*/  vm_prot_t ;
typedef  int /*<<< orphan*/  vm_pindex_t ;
typedef  size_t vm_offset_t ;
typedef  scalar_t__ vm_object_t ;
typedef  int /*<<< orphan*/  vm_map_t ;
typedef  TYPE_1__* vm_map_entry_t ;
struct shmfd {scalar_t__ shm_object; scalar_t__ shm_kmappings; } ;
struct file {scalar_t__ f_type; struct shmfd* f_data; } ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_4__ {size_t start; size_t end; } ;

/* Variables and functions */
 scalar_t__ DTYPE_SHM ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int KERN_SUCCESS ; 
 size_t PAGE_MASK ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int VM_PROT_READ ; 
 int VM_PROT_WRITE ; 
 int /*<<< orphan*/  kernel_map ; 
 size_t FUNC3 (size_t) ; 
 size_t FUNC4 (size_t) ; 
 int FUNC5 (int /*<<< orphan*/ *,size_t,int,TYPE_1__**,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,size_t,size_t) ; 

int
FUNC8(struct file *fp, void *mem, size_t size)
{
	struct shmfd *shmfd;
	vm_map_entry_t entry;
	vm_offset_t kva, ofs;
	vm_object_t obj;
	vm_pindex_t pindex;
	vm_prot_t prot;
	boolean_t wired;
	vm_map_t map;
	int rv;

	if (fp->f_type != DTYPE_SHM)
		return (EINVAL);
	shmfd = fp->f_data;
	kva = (vm_offset_t)mem;
	ofs = kva & PAGE_MASK;
	kva = FUNC4(kva);
	size = FUNC3(size + ofs);
	map = kernel_map;
	rv = FUNC5(&map, kva, VM_PROT_READ | VM_PROT_WRITE, &entry,
	    &obj, &pindex, &prot, &wired);
	if (rv != KERN_SUCCESS)
		return (EINVAL);
	if (entry->start != kva || entry->end != kva + size) {
		FUNC6(map, entry);
		return (EINVAL);
	}
	FUNC6(map, entry);
	if (obj != shmfd->shm_object)
		return (EINVAL);
	FUNC7(map, kva, kva + size);
	FUNC1(obj);
	FUNC0(shmfd->shm_kmappings > 0, ("shm_unmap: object not mapped"));
	shmfd->shm_kmappings--;
	FUNC2(obj);
	return (0);
}