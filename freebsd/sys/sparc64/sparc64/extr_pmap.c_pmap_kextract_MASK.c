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
struct tte {int tte_data; } ;

/* Variables and functions */
 int TD_V ; 
 int FUNC0 (int) ; 
 int FUNC1 (struct tte*) ; 
 int FUNC2 (struct tte*) ; 
 int VM_MIN_DIRECT_ADDRESS ; 
 struct tte* FUNC3 (int) ; 

vm_paddr_t
FUNC4(vm_offset_t va)
{
	struct tte *tp;

	if (va >= VM_MIN_DIRECT_ADDRESS)
		return (FUNC0(va));
	tp = FUNC3(va);
	if ((tp->tte_data & TD_V) == 0)
		return (0);
	return (FUNC1(tp) | (va & FUNC2(tp)));
}