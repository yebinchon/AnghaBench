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
struct if_clone {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct if_clone*,int*) ; 
 int FUNC1 (struct if_clone*,int*) ; 

int
FUNC2(struct if_clone *ifc, int *unit)
{
	if (*unit < 0)
		return (FUNC0(ifc, unit));
	else
		return (FUNC1(ifc, unit));
}