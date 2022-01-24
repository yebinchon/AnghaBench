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
 scalar_t__ ERANGE ; 
 long INT_MAX ; 
 long INT_MIN ; 
 scalar_t__ errno ; 
 long FUNC0 (char const*,char**,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,char const*) ; 

__attribute__((used)) static int
FUNC2(const char *com, const char *str, int *val)
{
	long v;
	char *ep;

	errno = 0;
	v = FUNC0(str, &ep, 10);
	if (v < INT_MIN || v > INT_MAX || errno == ERANGE) {
		FUNC1("%s argument %s is out of range.", com, str);
		return (1);
	}
	if (ep == str || *ep != '\0' || errno != 0) {
		FUNC1("Bad %s argument: %s.", com, str);
		return (1);
	}

	*val = (int)v;
	return (0);
}