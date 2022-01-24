#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_page_t ;
typedef  int vm_page_bits_t ;
typedef  scalar_t__ vm_ooffset_t ;
typedef  int /*<<< orphan*/  uintmax_t ;
struct TYPE_3__ {int dirty; scalar_t__ pindex; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 (scalar_t__) ; 

__attribute__((used)) static bool
FUNC3(vm_page_t m, vm_ooffset_t offset)
{

	FUNC1(FUNC0(m->pindex) <= offset &&
	    offset < FUNC0(m->pindex + 1),
	    ("page %p pidx %ju offset %ju", m, (uintmax_t)m->pindex,
	    (uintmax_t)offset));
	return ((m->dirty & ((vm_page_bits_t)1 << FUNC2(offset))) != 0);
}