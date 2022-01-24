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
 scalar_t__ iflag ; 
 int* FUNC2 (size_t) ; 
 size_t FUNC3 (int*,char const*,size_t) ; 
 int FUNC4 (int) ; 

__attribute__((used)) static wchar_t *
FUNC5(const char *str)
{
	size_t n;
	wchar_t *buf, *p;

	if ((n = FUNC3(NULL, str, 0)) == (size_t)-1)
		return (NULL);
	if (SIZE_MAX / sizeof(*buf) < n + 1)
		FUNC1(1, "conversion buffer length overflow");
	if ((buf = FUNC2((n + 1) * sizeof(*buf))) == NULL)
		FUNC0(1, "malloc");
	if (FUNC3(buf, str, n + 1) != n)
		FUNC1(1, "internal mbstowcs() error");

	if (iflag) {
		for (p = buf; *p != L'\0'; p++)
			*p = FUNC4(*p);
	}

	return (buf);
}