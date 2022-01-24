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
typedef  int vm_paddr_t ;
typedef  int vm_offset_t ;
struct tte {int dummy; } ;
typedef  scalar_t__ pmap_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (struct tte*) ; 
 int FUNC3 (struct tte*) ; 
 scalar_t__ kernel_pmap ; 
 int FUNC4 (int) ; 
 struct tte* FUNC5 (scalar_t__,int) ; 

vm_paddr_t
FUNC6(pmap_t pm, vm_offset_t va)
{
	struct tte *tp;
	vm_paddr_t pa;

	if (pm == kernel_pmap)
		return (FUNC4(va));
	FUNC0(pm);
	tp = FUNC5(pm, va);
	if (tp == NULL)
		pa = 0;
	else
		pa = FUNC2(tp) | (va & FUNC3(tp));
	FUNC1(pm);
	return (pa);
}