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
typedef  int u_int ;

/* Variables and functions */
 int FUNC0 (int) ; 

u_int
FUNC1(u_int id1, u_int id2)
{
	u_int h;

	h = (id1 << 6) | (id2 >> 10);

	return ((FUNC0(h >> 16) << 16) |
	    (FUNC0((h >> 8) & 0xff) << 8) |
	    FUNC0(h & 0xff));
}