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

/* Variables and functions */
 int SIZE_MAX ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 scalar_t__ iflag ; 
 int* FUNC3 (size_t) ; 
 size_t FUNC4 (int*,char const*,size_t) ; 
 scalar_t__ numchars ; 
 scalar_t__ numfields ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 
 int FUNC6 (int) ; 
 int* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static wchar_t *
FUNC8(const char *str)
{
	size_t n;
	wchar_t *buf, *ret, *p;

	if ((n = FUNC4(NULL, str, 0)) == (size_t)-1)
		return (NULL);
	if (SIZE_MAX / sizeof(*buf) < n + 1)
		FUNC1(1, "conversion buffer length overflow");
	if ((buf = FUNC3((n + 1) * sizeof(*buf))) == NULL)
		FUNC0(1, "malloc");
	if (FUNC4(buf, str, n + 1) != n)
		FUNC1(1, "internal mbstowcs() error");
	/* The last line may not end with \n. */
	if (n > 0 && buf[n - 1] == L'\n')
		buf[n - 1] = L'\0';

	/* If requested get the chosen fields + character offsets. */
	if (numfields || numchars) {
		if ((ret = FUNC7(FUNC5(buf))) == NULL)
			FUNC0(1, "wcsdup");
		FUNC2(buf);
	} else
		ret = buf;

	if (iflag) {
		for (p = ret; *p != L'\0'; p++)
			*p = FUNC6(*p);
	}

	return (ret);
}