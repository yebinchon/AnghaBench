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
typedef  int /*<<< orphan*/  vm_paddr_t ;
typedef  size_t vm_offset_t ;
struct sglist_seg {size_t ss_len; int /*<<< orphan*/  ss_paddr; } ;
struct sglist {int sg_nseg; struct sglist_seg* sg_segs; } ;
typedef  int /*<<< orphan*/ * pmap_t ;

/* Variables and functions */
 size_t FUNC0 (size_t,scalar_t__) ; 
 size_t PAGE_MASK ; 
 scalar_t__ PAGE_SIZE ; 
 int FUNC1 (struct sglist*,struct sglist_seg**,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 

__attribute__((used)) static __inline int
FUNC4(struct sglist *sg, void *buf, size_t len, pmap_t pmap,
    size_t *donep)
{
	struct sglist_seg *ss;
	vm_offset_t vaddr, offset;
	vm_paddr_t paddr;
	size_t seglen;
	int error;

	if (donep)
		*donep = 0;
	if (len == 0)
		return (0);

	/* Do the first page.  It may have an offset. */
	vaddr = (vm_offset_t)buf;
	offset = vaddr & PAGE_MASK;
	if (pmap != NULL)
		paddr = FUNC2(pmap, vaddr);
	else
		paddr = FUNC3(vaddr);
	seglen = FUNC0(len, PAGE_SIZE - offset);
	if (sg->sg_nseg == 0) {
		ss = sg->sg_segs;
		ss->ss_paddr = paddr;
		ss->ss_len = seglen;
		sg->sg_nseg = 1;
	} else {
		ss = &sg->sg_segs[sg->sg_nseg - 1];
		error = FUNC1(sg, &ss, paddr, seglen);
		if (error)
			return (error);
	}
	vaddr += seglen;
	len -= seglen;
	if (donep)
		*donep += seglen;

	while (len > 0) {
		seglen = FUNC0(len, PAGE_SIZE);
		if (pmap != NULL)
			paddr = FUNC2(pmap, vaddr);
		else
			paddr = FUNC3(vaddr);
		error = FUNC1(sg, &ss, paddr, seglen);
		if (error)
			return (error);
		vaddr += seglen;
		len -= seglen;
		if (donep)
			*donep += seglen;
	}

	return (0);
}