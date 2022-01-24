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
typedef  int wchar_t ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int*,int*) ; 
 int* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 
 int FUNC6 (char const*) ; 
 int* FUNC7 (int*,int) ; 
 int /*<<< orphan*/  FUNC8 (int*,char const*,int) ; 

int FUNC9(const char *namevalue)
{
	int size;
	wchar_t *wide, *equal;
	BOOL result;

	if (!namevalue || !*namevalue)
		return 0;

	size = FUNC6(namevalue) * 2 + 1;
	wide = FUNC2(size, sizeof(wchar_t));
	if (!wide)
		FUNC3("Out of memory, (tried to allocate %u wchar_t's)", size);
	FUNC8(wide, namevalue, size);
	equal = FUNC7(wide, L'=');
	if (!equal)
		result = FUNC1(wide, NULL);
	else {
		*equal = L'\0';
		result = FUNC1(wide, equal + 1);
	}
	FUNC5(wide);

	if (!result)
		errno = FUNC4(FUNC0());

	return result ? 0 : -1;
}