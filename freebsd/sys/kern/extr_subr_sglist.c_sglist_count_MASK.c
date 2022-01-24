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
typedef  scalar_t__ vm_paddr_t ;
typedef  scalar_t__ vm_offset_t ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 

int
FUNC2(void *buf, size_t len)
{
	vm_offset_t vaddr, vendaddr;
	vm_paddr_t lastaddr, paddr;
	int nsegs;

	if (len == 0)
		return (0);

	vaddr = FUNC1((vm_offset_t)buf);
	vendaddr = (vm_offset_t)buf + len;
	nsegs = 1;
	lastaddr = FUNC0(vaddr);
	vaddr += PAGE_SIZE;
	while (vaddr < vendaddr) {
		paddr = FUNC0(vaddr);
		if (lastaddr + PAGE_SIZE != paddr)
			nsegs++;
		lastaddr = paddr;
		vaddr += PAGE_SIZE;
	}
	return (nsegs);
}