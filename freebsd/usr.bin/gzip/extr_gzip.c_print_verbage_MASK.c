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
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC3 (char const*) ; 

__attribute__((used)) static void
FUNC4(const char *file, const char *nfile, off_t usize, off_t gsize)
{
	if (file)
		FUNC1(stderr, "%s:%s  ", file,
		    FUNC3(file) < 7 ? "\t\t" : "\t");
	FUNC2(usize, gsize, stderr);
	if (nfile)
		FUNC1(stderr, " -- replaced with %s", nfile);
	FUNC1(stderr, "\n");
	FUNC0(stderr);
}