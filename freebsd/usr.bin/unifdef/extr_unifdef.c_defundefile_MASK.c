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
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 char const* filename ; 
 int /*<<< orphan*/ * FUNC5 (char const*,char*) ; 
 scalar_t__ incomment ; 
 int /*<<< orphan*/ * input ; 
 scalar_t__ linenum ; 

__attribute__((used)) static void
FUNC6(const char *fn)
{
	filename = fn;
	input = FUNC5(fn, "rb");
	if (input == NULL)
		FUNC1(2, "can't open %s", fn);
	linenum = 0;
	while (FUNC0())
		;
	if (FUNC4(input))
		FUNC1(2, "can't read %s", filename);
	else
		FUNC3(input);
	if (incomment)
		FUNC2("EOF in comment");
}