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
typedef  int u_char ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 

__attribute__((used)) static void
FUNC3(u_char *p, int len)
{
	if (len < 6) {
		FUNC1("\tWrong length for BAR tuple\n");
		return;
	}
	FUNC1("\tBAR %d: size = ", *p & 7);
	FUNC0(FUNC2(p + 2));
	FUNC1(", %s%s%s%s\n",
	       (*p & 0x10) ? "I/O" : "Memory",
	       (*p & 0x20) ? ", Prefetch" : "",
	       (*p & 0x40) ? ", Cacheable" : "",
	       (*p & 0x80) ? ", <1Mb" : "");
}