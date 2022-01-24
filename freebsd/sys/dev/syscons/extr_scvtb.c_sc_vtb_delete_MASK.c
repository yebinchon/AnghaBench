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
 int /*<<< orphan*/  FUNC2 (int,void*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__,int) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int) ; 

void
FUNC5(sc_vtb_t *vtb, int at, int count, int c, int attr)
{
	int len;

	if (at + count > vtb->vtb_size)
		count = vtb->vtb_size - at;
	len = vtb->vtb_size - at - count;
	if (len > 0) {
#ifndef __sparc64__
		if (vtb->vtb_type == VTB_FRAMEBUFFER)
			FUNC1(FUNC4(vtb, at + count),
				 FUNC4(vtb, at),
				 len*sizeof(u_int16_t)); 
		else
#endif
			FUNC0((void *)FUNC4(vtb, at + count),
			      (void *)FUNC4(vtb, at),
			      len*sizeof(u_int16_t)); 
	}
#ifndef __sparc64__
	if (vtb->vtb_type == VTB_FRAMEBUFFER)
		FUNC3(attr | c, FUNC4(vtb, at + len),
			 vtb->vtb_size - at - len);
	else
#endif
		FUNC2(attr | c, (void *)FUNC4(vtb, at + len),
		      vtb->vtb_size - at - len);
}