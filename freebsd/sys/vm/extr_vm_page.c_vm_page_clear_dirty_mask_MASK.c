#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_page_t ;
typedef  int /*<<< orphan*/  vm_page_bits_t ;
struct TYPE_7__ {int /*<<< orphan*/  dirty; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static __inline void
FUNC4(vm_page_t m, vm_page_bits_t pagebits)
{

	FUNC1(m);

	/*
	 * If the page is xbusied and not write mapped we are the
	 * only thread that can modify dirty bits.  Otherwise, The pmap
	 * layer can call vm_page_dirty() without holding a distinguished
	 * lock.  The combination of page busy and atomic operations
	 * suffice to guarantee consistency of the page dirty field.
	 */
	if (FUNC3(m) && !FUNC0(m))
		m->dirty &= ~pagebits;
	else
		FUNC2(m, &m->dirty, pagebits);
}