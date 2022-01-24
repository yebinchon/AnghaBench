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
typedef  scalar_t__ u_long ;
typedef  int /*<<< orphan*/  ng_ID_t ;

/* Variables and functions */
 scalar_t__ ULONG_MAX ; 
 int /*<<< orphan*/  FUNC0 (char const) ; 
 int FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*,char**,int) ; 

__attribute__((used)) static ng_ID_t
FUNC3(const char *name)
{
	const int len = FUNC1(name);
	char *eptr;
	u_long val;

	/* Check for proper length, brackets, no leading junk */
	if ((len < 3) || (name[0] != '[') || (name[len - 1] != ']') ||
	    (!FUNC0(name[1])))
		return ((ng_ID_t)0);

	/* Decode number */
	val = FUNC2(name + 1, &eptr, 16);
	if ((eptr - name != len - 1) || (val == ULONG_MAX) || (val == 0))
		return ((ng_ID_t)0);

	return ((ng_ID_t)val);
}