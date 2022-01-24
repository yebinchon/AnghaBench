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
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int /*<<< orphan*/  pt_entry_t ;
typedef  int /*<<< orphan*/  pmap_t ;
typedef  int /*<<< orphan*/  pd_entry_t ;

/* Variables and functions */
 int PTE_RX ; 
 int PTE_V ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static __inline pt_entry_t *
FUNC3(pmap_t pmap, vm_offset_t va)
{
	pd_entry_t *l2;

	l2 = FUNC0(pmap, va);
	if (l2 == NULL)
		return (NULL);
	if ((FUNC2(l2) & PTE_V) == 0)
		return (NULL);
	if ((FUNC2(l2) & PTE_RX) != 0)
		return (NULL);

	return (FUNC1(l2, va));
}