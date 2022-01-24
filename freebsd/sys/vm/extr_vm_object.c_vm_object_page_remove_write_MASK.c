#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_page_t ;
typedef  int boolean_t ;
struct TYPE_5__ {int aflags; scalar_t__ dirty; } ;

/* Variables and functions */
 int FALSE ; 
 int OBJPC_NOSYNC ; 
 int PGA_NOSYNC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static boolean_t
FUNC2(vm_page_t p, int flags, boolean_t *allclean)
{

	FUNC1(p);

	/*
	 * If we have been asked to skip nosync pages and this is a
	 * nosync page, skip it.  Note that the object flags were not
	 * cleared in this case so we do not have to set them.
	 */
	if ((flags & OBJPC_NOSYNC) != 0 && (p->aflags & PGA_NOSYNC) != 0) {
		*allclean = FALSE;
		return (FALSE);
	} else {
		FUNC0(p);
		return (p->dirty != 0);
	}
}