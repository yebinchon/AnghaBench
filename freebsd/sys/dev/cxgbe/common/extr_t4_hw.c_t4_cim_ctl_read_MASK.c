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
struct adapter {int dummy; } ;

/* Variables and functions */
 scalar_t__ CIM_CTL_BASE ; 
 int FUNC0 (struct adapter*,scalar_t__,unsigned int,unsigned int*) ; 

int FUNC1(struct adapter *adap, unsigned int addr, unsigned int n,
		    unsigned int *valp)
{
	return FUNC0(adap, addr + CIM_CTL_BASE, n, valp);
}