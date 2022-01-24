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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 char* progname ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC2(void)
{
	FUNC1(stderr, "usage: %s [-f device] op...\n", progname);
	FUNC1(stderr, "where op's are:\n");
	FUNC1(stderr, "fact\t\tread factory PR segment\n");
	FUNC1(stderr, "oem\t\tread OEM segment\n");
	FUNC1(stderr, "woem value\twrite OEM segment\n");
	FUNC1(stderr, "plr\t\tread PLR\n");
	FUNC1(stderr, "wplr\t\twrite PLR\n");
	FUNC0(-1);
}