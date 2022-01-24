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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_RESET ; 
 int PRIO_MAX ; 
 int PRIO_MIN ; 
 int /*<<< orphan*/  PRIO_PROCESS ; 
 char const* bad_pri_value ; 
 char const* FUNC1 () ; 
 int /*<<< orphan*/  errno ; 
 char* FUNC2 (char*) ; 
 char const* no_proc_specified ; 
 int FUNC3 (char*,int*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int) ; 

const char *
FUNC5(char *str)
{
    char negate;
    int prio;
    int procnum;

    ERR_RESET;

    /* allow for negative priority values */
    if ((negate = (*str == '-')) != 0)
    {
	/* move past the minus sign */
	str++;
    }

    /* use procnum as a temporary holding place and get the number */
    procnum = FUNC3(str, &prio);

    /* negate if necessary */
    if (negate)
    {
	prio = -prio;
    }

    /* check for validity */
    if (procnum == -1 || prio < PRIO_MIN || prio > PRIO_MAX)
    {
	return(bad_pri_value);
    }

    /* move to the first process number */
    if ((str = FUNC2(str)) == NULL)
    {
	return(no_proc_specified);
    }

    /* loop thru the process numbers, renicing each one */
    do
    {
	if (FUNC3(str, &procnum) == -1)
	{
	    FUNC0(str, 0);
	}

	if (FUNC4(PRIO_PROCESS, procnum, prio) == -1)
	{
	    FUNC0(str, errno);
	}
    } while ((str = FUNC2(str)) != NULL);

    /* return appropriate error string */
    return(FUNC1());
}