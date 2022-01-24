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
 int /*<<< orphan*/  FUNC0 (int,char const*,char const*) ; 
 char* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void
FUNC3(bool ignorethis, bool definethis, char *symval)
{
	const char *sym, *val;

	sym = symval;
	val = FUNC1(sym);
	if (definethis && *val == '=') {
		symval[val - sym] = '\0';
		val = val + 1;
	} else if (*val == '\0') {
		val = definethis ? "1" : NULL;
	} else {
		FUNC2();
	}
	FUNC0(ignorethis, sym, val);
}