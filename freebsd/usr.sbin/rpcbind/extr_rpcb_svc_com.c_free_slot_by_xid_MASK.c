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
typedef  int u_int32_t ;

/* Variables and functions */
 scalar_t__ NFORWARD ; 
 int FUNC0 (int) ; 

__attribute__((used)) static int
FUNC1(u_int32_t xid)
{
	int entry;

	entry = xid % (u_int32_t)NFORWARD;
	return (FUNC0(entry));
}