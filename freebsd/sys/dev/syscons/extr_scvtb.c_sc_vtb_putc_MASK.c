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
typedef  int u_int16_t ;
struct TYPE_4__ {scalar_t__ vtb_type; } ;
typedef  TYPE_1__ sc_vtb_t ;

/* Variables and functions */
 scalar_t__ VTB_FRAMEBUFFER ; 
 scalar_t__ FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 

void
FUNC2(sc_vtb_t *vtb, int at, int c, int a)
{
#ifndef __sparc64__
	if (vtb->vtb_type == VTB_FRAMEBUFFER)
		FUNC1(FUNC0(vtb, at), a | c);
	else
#endif
		*(u_int16_t *)FUNC0(vtb, at) = a | c;
}