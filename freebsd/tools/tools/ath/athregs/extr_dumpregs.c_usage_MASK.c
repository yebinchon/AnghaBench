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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC2(void)
{
	FUNC1(stderr, "usage: athregs [-i interface] [-abdkmqxz]\n");
	FUNC1(stderr, "-a	display all registers\n");
	FUNC1(stderr, "-b	display baseband registers\n");
	FUNC1(stderr, "-d	display DCU registers\n");
	FUNC1(stderr, "-k	display key cache registers\n");
	FUNC1(stderr, "-m	display \"MAC\" registers (default)\n");
	FUNC1(stderr, "-q	display QCU registers\n");
	FUNC1(stderr, "-x	display XR registers\n");
	FUNC1(stderr, "-z	display interrupt registers\n");
	FUNC1(stderr, "\n");
	FUNC1(stderr, "-A	display register address\n");
	FUNC1(stderr, "-N	suppress display of register name\n");
	FUNC0(-1);
}