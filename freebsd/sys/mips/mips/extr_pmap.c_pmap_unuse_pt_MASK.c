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
typedef  int /*<<< orphan*/  vm_page_t ;
typedef  scalar_t__ vm_offset_t ;
typedef  int /*<<< orphan*/  pmap_t ;
typedef  scalar_t__ pd_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ VM_MAXUSER_ADDRESS ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(pmap_t pmap, vm_offset_t va, pd_entry_t pde)
{
	vm_page_t mpte;

	if (va >= VM_MAXUSER_ADDRESS)
		return (0);
	FUNC0(pde != 0, ("pmap_unuse_pt: pde != 0"));
	mpte = FUNC2(FUNC1(pde));
	return (FUNC3(pmap, va, mpte));
}