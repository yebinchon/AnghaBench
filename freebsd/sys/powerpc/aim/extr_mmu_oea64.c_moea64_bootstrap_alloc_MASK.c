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
typedef  scalar_t__ vm_size_t ;
typedef  scalar_t__ vm_offset_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__* phys_avail ; 
 int phys_avail_count ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 

vm_offset_t
FUNC4(vm_size_t size, vm_size_t align)
{
	vm_offset_t	s, e;
	int		i, j;

	size = FUNC2(size);
	for (i = 0; phys_avail[i + 1] != 0; i += 2) {
		if (align != 0)
			s = FUNC3(phys_avail[i], align);
		else
			s = phys_avail[i];
		e = s + size;

		if (s < phys_avail[i] || e > phys_avail[i + 1])
			continue;

		if (s + size > FUNC1())
			continue;

		if (s == phys_avail[i]) {
			phys_avail[i] += size;
		} else if (e == phys_avail[i + 1]) {
			phys_avail[i + 1] -= size;
		} else {
			for (j = phys_avail_count * 2; j > i; j -= 2) {
				phys_avail[j] = phys_avail[j - 2];
				phys_avail[j + 1] = phys_avail[j - 1];
			}

			phys_avail[i + 3] = phys_avail[i + 1];
			phys_avail[i + 1] = s;
			phys_avail[i + 2] = e;
			phys_avail_count++;
		}

		return (s);
	}
	FUNC0("moea64_bootstrap_alloc: could not allocate memory");
}