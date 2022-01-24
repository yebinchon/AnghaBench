#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u_int ;

/* Variables and functions */
 scalar_t__ IPSEC_MODULE_INCR ; 
 scalar_t__ FUNC0 (scalar_t__ volatile*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void
FUNC1(volatile u_int *cntr)
{
	u_int old, new;

	do {
		old = *cntr;
		new = old - IPSEC_MODULE_INCR;
	} while (FUNC0(cntr, old, new) == 0);
}