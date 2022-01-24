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
 int Infinity ; 
 int Invalid ; 
 size_t FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,char*,size_t) ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ *,int) ; 

int
FUNC3(const char *str)
{
    size_t len;

    len = FUNC0(str);
    if (len != 0)
    {
	if (FUNC1(str, "infinity", len) == 0 ||
	    FUNC1(str, "all",      len) == 0 ||
	    FUNC1(str, "maximum",  len) == 0)
	{
	    return(Infinity);
	}
	else if (str[0] == '-')
	{
	    return(Invalid);
	}
	else
	{
		return((int)FUNC2(str, NULL, 10));
	}
    }
    return(0);
}