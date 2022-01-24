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
	(void) FUNC1(stderr, "Usage: localedef [options] localename\n");
	(void) FUNC1(stderr, "[options] are:\n");
	(void) FUNC1(stderr, "  -D          : BSD-style output\n");
	(void) FUNC1(stderr, "  -b          : big-endian output\n");
	(void) FUNC1(stderr, "  -c          : ignore warnings\n");
	(void) FUNC1(stderr, "  -l          : little-endian output\n");
	(void) FUNC1(stderr, "  -v          : verbose output\n");
	(void) FUNC1(stderr, "  -U          : ignore undefined symbols\n");
	(void) FUNC1(stderr, "  -f charmap  : use given charmap file\n");
	(void) FUNC1(stderr, "  -u encoding : assume encoding\n");
	(void) FUNC1(stderr, "  -w widths   : use screen widths file\n");
	(void) FUNC1(stderr, "  -i locsrc   : source file for locale\n");
	FUNC0(4);
}