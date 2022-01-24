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
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

int
FUNC4(int argc, char *argv[])
{

	if (argc != 2)
		FUNC1(-1, "usage: ufs_uprintf /non_optional_path");

	if (FUNC0(argv[1]) < 0)
		FUNC1(-1, "chdir(%s)", argv[1]);

	FUNC2();

	FUNC3();

	return (0);
}