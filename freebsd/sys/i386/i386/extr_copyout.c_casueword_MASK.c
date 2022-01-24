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
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  void* u_long ;
struct casueword_arg0 {int res; void* oldval; void* newval; } ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  casueword_slow0 ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,struct casueword_arg0*) ; 

int
FUNC1(volatile u_long *base, u_long oldval, u_long *oldvalp, u_long newval)
{
	struct casueword_arg0 ca;
	int res;

	ca.oldval = oldval;
	ca.newval = newval;
	res = FUNC0((vm_offset_t)base, sizeof(int32_t), true,
	    casueword_slow0, &ca);
	if (res == 0) {
		*oldvalp = ca.oldval;
		return (ca.res);
	}
	return (-1);
}