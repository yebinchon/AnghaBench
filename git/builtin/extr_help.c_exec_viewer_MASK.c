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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char const*) ; 
 char* FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static void FUNC8(const char *name, const char *page)
{
	const char *info = FUNC5(name);

	if (!FUNC6(name, "man"))
		FUNC3(info, page);
	else if (!FUNC6(name, "woman"))
		FUNC4(info, page);
	else if (!FUNC6(name, "konqueror"))
		FUNC2(info, page);
	else if (info)
		FUNC1(info, page);
	else
		FUNC7(FUNC0("'%s': unknown man viewer."), name);
}