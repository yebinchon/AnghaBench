#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int vm_prot_t ;
typedef  TYPE_2__* vm_page_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  scalar_t__ pmap_t ;
typedef  int pd_entry_t ;
struct TYPE_5__ {int /*<<< orphan*/  pat_mode; } ;
struct TYPE_6__ {int oflags; TYPE_1__ md; } ;

/* Variables and functions */
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int PG_MANAGED ; 
 int PG_PS ; 
 int PG_U ; 
 int PG_V ; 
 int PMAP_ENTER_NORECLAIM ; 
 int PMAP_ENTER_NOREPLACE ; 
 int PMAP_ENTER_NOSLEEP ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_2__*) ; 
 int VM_PROT_EXECUTE ; 
 int VPO_UNMANAGED ; 
 int /*<<< orphan*/  i386_read_exec ; 
 scalar_t__ kernel_pmap ; 
 int pg_nx ; 
 int FUNC2 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC4(pmap_t pmap, vm_offset_t va, vm_page_t m, vm_prot_t prot)
{
	pd_entry_t newpde;

	FUNC0(pmap, MA_OWNED);
	newpde = FUNC1(m) | FUNC2(pmap, m->md.pat_mode, 1) |
	    PG_PS | PG_V;
	if ((m->oflags & VPO_UNMANAGED) == 0)
		newpde |= PG_MANAGED;
#ifdef PMAP_PAE_COMP
	if ((prot & VM_PROT_EXECUTE) == 0 && !i386_read_exec)
		newpde |= pg_nx;
#endif
	if (pmap != kernel_pmap)
		newpde |= PG_U;
	return (FUNC3(pmap, va, newpde, PMAP_ENTER_NOSLEEP |
	    PMAP_ENTER_NOREPLACE | PMAP_ENTER_NORECLAIM, NULL) ==
	    KERN_SUCCESS);
}