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
 scalar_t__ FUNC0 (int) ; 
 int numchars ; 
 int /*<<< orphan*/  numfields ; 

__attribute__((used)) static wchar_t *
FUNC1(wchar_t *str)
{
	int nchars, nfields;

	for (nfields = 0; *str != L'\0' && nfields++ != numfields; ) {
		while (FUNC0(*str))
			str++;
		while (*str != L'\0' && !FUNC0(*str))
			str++;
	}
	for (nchars = numchars; nchars-- && *str != L'\0'; ++str)
		;
	return(str);
}