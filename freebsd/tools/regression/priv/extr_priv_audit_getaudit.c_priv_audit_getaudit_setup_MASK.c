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
struct test {int dummy; } ;

/* Variables and functions */

int
FUNC0(int asroot, int injail, struct test *test)
{

	/*
	 * XXXRW: It would be nice if we checked for audit being configured
	 * here.
	 */
	return (0);
}