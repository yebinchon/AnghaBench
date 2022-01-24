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

	FUNC1(stderr,
	    "usage: cpuset [-l cpu-list] [-s setid] cmd ...\n");
	FUNC1(stderr,
	    "       cpuset [-l cpu-list] [-s setid] -p pid\n");
	FUNC1(stderr,
	    "       cpuset [-c] [-l cpu-list] -C -p pid\n");
	FUNC1(stderr,
	    "       cpuset [-c] [-l cpu-list] [-j jailid | -p pid | -t tid | -s setid | -x irq]\n");
	FUNC1(stderr,
	    "       cpuset -g [-cir] [-d domain | -j jailid | -p pid | -t tid | -s setid |\n"
	    "              -x irq]\n");
	FUNC0(1);
}