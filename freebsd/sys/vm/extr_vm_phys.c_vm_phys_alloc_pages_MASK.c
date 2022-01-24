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
typedef  int /*<<< orphan*/ * vm_page_t ;

/* Variables and functions */
 int VM_NFREELIST ; 
 int /*<<< orphan*/ * FUNC0 (int,int,int,int) ; 

vm_page_t
FUNC1(int domain, int pool, int order)
{
	vm_page_t m;
	int freelist;

	for (freelist = 0; freelist < VM_NFREELIST; freelist++) {
		m = FUNC0(domain, freelist, pool, order);
		if (m != NULL)
			return (m);
	}
	return (NULL);
}