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
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static inline int
FUNC2(wchar_t c1, wchar_t c2)
{

	if (c1 == c2)
		return (0);

	if (c1 == L'~')
		return (-1);
	if (c2 == L'~')
		return (+1);

	if (FUNC1(c1) || !c1)
		return ((FUNC1(c2) || !c2) ? 0 : -1);

	if (FUNC1(c2) || !c2)
		return (+1);

	if (FUNC0(c1))
		return ((FUNC0(c2)) ? ((int) c1 - (int) c2) : -1);

	if (FUNC0(c2))
		return (+1);

	return ((int) c1 - (int) c2);
}