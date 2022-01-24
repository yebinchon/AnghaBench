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
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_prot_t ;
typedef  scalar_t__ vm_pindex_t ;
typedef  int vm_ooffset_t ;
typedef  TYPE_4__* vm_object_t ;
struct ucred {int dummy; } ;
struct sglist {int sg_nseg; TYPE_1__* sg_segs; } ;
struct TYPE_8__ {int /*<<< orphan*/  sgp_pglist; } ;
struct TYPE_9__ {TYPE_2__ sgp; } ;
struct TYPE_10__ {TYPE_3__ un_pager; int /*<<< orphan*/  handle; } ;
struct TYPE_7__ {int ss_paddr; int ss_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  OBJT_SG ; 
 scalar_t__ FUNC0 (int) ; 
 int PAGE_MASK ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct sglist*) ; 
 TYPE_4__* FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static vm_object_t
FUNC5(void *handle, vm_ooffset_t size, vm_prot_t prot,
    vm_ooffset_t foff, struct ucred *cred)
{
	struct sglist *sg;
	vm_object_t object;
	vm_pindex_t npages, pindex;
	int i;

	/*
	 * Offset should be page aligned.
	 */
	if (foff & PAGE_MASK)
		return (NULL);

	/*
	 * The scatter/gather list must only include page-aligned
	 * ranges.
	 */
	npages = 0;
	sg = handle;
	for (i = 0; i < sg->sg_nseg; i++) {
		if ((sg->sg_segs[i].ss_paddr % PAGE_SIZE) != 0 ||
		    (sg->sg_segs[i].ss_len % PAGE_SIZE) != 0)
			return (NULL);
		npages += sg->sg_segs[i].ss_len / PAGE_SIZE;
	}

	/*
	 * The scatter/gather list has a fixed size.  Refuse requests
	 * to map beyond that.
	 */
	size = FUNC2(size);
	pindex = FUNC0(foff) + FUNC0(size);
	if (pindex > npages || pindex < FUNC0(foff) ||
	    pindex < FUNC0(size))
		return (NULL);

	/*
	 * Allocate a new object and associate it with the
	 * scatter/gather list.  It is ok for our purposes to have
	 * multiple VM objects associated with the same scatter/gather
	 * list because scatter/gather lists are static.  This is also
	 * simpler than ensuring a unique object per scatter/gather
	 * list.
	 */
	object = FUNC4(OBJT_SG, npages);
	object->handle = FUNC3(sg);
	FUNC1(&object->un_pager.sgp.sgp_pglist);
	return (object);
}