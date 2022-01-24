#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_page_t ;
typedef  int /*<<< orphan*/  vm_paddr_t ;
typedef  int /*<<< orphan*/  vm_memattr_t ;
struct TYPE_4__ {int flags; int /*<<< orphan*/  phys_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int PG_FICTITIOUS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void
FUNC2(vm_page_t m, vm_paddr_t paddr, vm_memattr_t memattr)
{

	FUNC0((m->flags & PG_FICTITIOUS) != 0,
	    ("vm_page_updatefake: bad page %p", m));
	m->phys_addr = paddr;
	FUNC1(m, memattr);
}