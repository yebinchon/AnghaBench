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
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC3 (char const*) ; 

__attribute__((used)) static void
FUNC4(const char *progname)
{
	char *path;

	path = FUNC3(progname);

	FUNC2(stderr, "usage: %s [-f format] [-o filename] filename [...]\n",
	    FUNC0(path));
	FUNC2(stderr, "\tsupported output formats: shell, text\n");
	FUNC1(1);
}