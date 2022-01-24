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
	    "usage: devctl attach device\n"
	    "       devctl detach [-f] device\n"
	    "       devctl disable [-f] device\n"
	    "       devctl enable device\n"
	    "       devctl suspend device\n"
	    "       devctl resume device\n"
	    "       devctl set driver [-f] device driver\n"
	    "       devctl clear driver [-f] device\n"
	    "       devctl rescan device\n"
	    "       devctl delete [-f] device\n"
	    "       devctl freeze\n"
	    "       devctl thaw\n"
	    "       devctl reset [-d] device\n"
	    );
	FUNC0(1);
}