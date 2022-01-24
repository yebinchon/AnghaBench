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
typedef  int /*<<< orphan*/  u_int16_t ;
struct TYPE_4__ {int vtb_size; scalar_t__ vtb_type; } ;
typedef  TYPE_1__ sc_vtb_t ;

/* Variables and functions */
 scalar_t__ VTB_FRAMEBUFFER ; 
 int /*<<< orphan*/  FUNC0 (void*,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int) ; 

void
FUNC3(sc_vtb_t *vtb, int from, int to, int count)
{
	if (from + count > vtb->vtb_size)
		count = vtb->vtb_size - from;
	if (to + count > vtb->vtb_size)
		count = vtb->vtb_size - to;
	if (count <= 0)
		return;
#ifndef __sparc64__
	if (vtb->vtb_type == VTB_FRAMEBUFFER)
		FUNC1(FUNC2(vtb, from),
			 FUNC2(vtb, to), count*sizeof(u_int16_t)); 
	else
#endif
		FUNC0((void *)FUNC2(vtb, from),
		      (void *)FUNC2(vtb, to), count*sizeof(u_int16_t));
}