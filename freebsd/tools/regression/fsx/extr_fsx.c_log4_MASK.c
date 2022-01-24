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

/* Variables and functions */
 int OP_CLOSEOPEN ; 
 int OP_INVALIDATE ; 
 scalar_t__ closeopen ; 
 int /*<<< orphan*/  FUNC0 (int,int,int,int) ; 
 scalar_t__ invl ; 

void
FUNC1(int operation, int arg0, int arg1, int arg2)
{
	FUNC0(operation, arg0, arg1, arg2);
	if (closeopen)
		FUNC0(OP_CLOSEOPEN, 0, 0, 0);
	if (invl)
		FUNC0(OP_INVALIDATE, 0, 0, 0);
}