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
 int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int) ; 

int
FUNC2(sc_vtb_t *vtb, int at)
{
#ifndef __sparc64__
	if (vtb->vtb_type == VTB_FRAMEBUFFER)
		return (FUNC0(FUNC1(vtb, at)) & 0xff00);
	else
#endif
		return (*(u_int16_t *)FUNC1(vtb, at) & 0xff00);
}