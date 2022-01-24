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
 int exit_value ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC2 (char const*) ; 

__attribute__((used)) static void
FUNC3(const char *file, int ok)
{

	if (exit_value == 0 && ok == 0)
		exit_value = 1;
	FUNC1(stderr, "%s:%s  %s\n", file,
	    FUNC2(file) < 7 ? "\t\t" : "\t", ok ? "OK" : "NOT OK");
	FUNC0(stderr);
}