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
typedef  int /*<<< orphan*/  vm_memattr_t ;
typedef  int /*<<< orphan*/  u_int ;
typedef  int /*<<< orphan*/  pt_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PTE_C_MASK ; 

__attribute__((used)) static __inline void
FUNC1(pt_entry_t *pte, vm_memattr_t ma)
{
	u_int npte;

	npte = *(u_int *)pte;
	npte &= ~PTE_C_MASK;
	npte |= FUNC0(ma);
	*pte = npte;
}