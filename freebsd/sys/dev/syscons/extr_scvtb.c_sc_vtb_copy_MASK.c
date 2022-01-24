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
typedef  int /*<<< orphan*/  u_int16_t ;
struct TYPE_5__ {scalar_t__ vtb_type; } ;
typedef  TYPE_1__ sc_vtb_t ;

/* Variables and functions */
 scalar_t__ VTB_FRAMEBUFFER ; 
 int /*<<< orphan*/  FUNC0 (void*,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int) ; 

void
FUNC4(sc_vtb_t *vtb1, int from, sc_vtb_t *vtb2, int to, int count)
{
#ifndef __sparc64__
	/* XXX if both are VTB_VRAMEBUFFER... */
	if (vtb2->vtb_type == VTB_FRAMEBUFFER)
		FUNC2(FUNC3(vtb1, from),
			   FUNC3(vtb2, to),
			   count*sizeof(u_int16_t));
	else if (vtb1->vtb_type == VTB_FRAMEBUFFER)
		FUNC1(FUNC3(vtb1, from),
			     FUNC3(vtb2, to),
			     count*sizeof(u_int16_t));
	else
#endif
		FUNC0((void *)FUNC3(vtb1, from),
		      (void *)FUNC3(vtb2, to),
		      count*sizeof(u_int16_t));
}