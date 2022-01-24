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
typedef  int /*<<< orphan*/  vm_offset_t ;
struct spglist {int dummy; } ;
typedef  scalar_t__ pmap_t ;
typedef  int pd_entry_t ;

/* Variables and functions */
 int PG_FRAME ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ kernel_pmap ; 
 int* FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__,int /*<<< orphan*/ ,struct spglist*) ; 

__attribute__((used)) static int
FUNC3(pmap_t pmap, vm_offset_t va, struct spglist *free)
{
	pd_entry_t ptepde;
	vm_page_t mpte;

	if (pmap == kernel_pmap)
		return (0);
	ptepde = *FUNC1(pmap, va);
	mpte = FUNC0(ptepde & PG_FRAME);
	return (FUNC2(pmap, mpte, free));
}