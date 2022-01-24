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
 int FUNC0 (char const) ; 
 scalar_t__ FUNC1 (char const) ; 

int
FUNC2(const char c[2]) {
	if (!(FUNC1(c[0]) && FUNC1(c[1])))
		return -1;
	return (FUNC0(c[0]) << 4) + FUNC0(c[1]);
}