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
 int NSIG ; 
 int SIGTERM ; 
 char const* bad_signal_name ; 
 char const* FUNC1 () ; 
 int /*<<< orphan*/  errno ; 
 char const* invalid_signal_number ; 
 scalar_t__ FUNC2 (char) ; 
 scalar_t__ FUNC3 (char) ; 
 int FUNC4 (int,int) ; 
 char* FUNC5 (char*) ; 
 char const* no_proc_specified ; 
 int FUNC6 (char*,int*) ; 
 int FUNC7 (char*) ; 

const char *
FUNC8(char *str)
{
    char *nptr;
    int signum = SIGTERM;	/* default */
    int procnum;

    /* reset error array */
    ERR_RESET;

    /* skip over leading white space */
    while (FUNC3(*str)) str++;

    if (str[0] == '-')
    {
	/* explicit signal specified */
	if ((nptr = FUNC5(str)) == NULL)
	{
	    return(no_proc_specified);
	}

	if (FUNC2(str[1]))
	{
	    FUNC6(str + 1, &signum);
	    if (signum <= 0 || signum >= NSIG)
	    {
		return(invalid_signal_number);
	    }
	}
	else
	{
		signum = FUNC7(str + 1);

	    /* was it ever found */
	    if (signum == -1 )
	    {
			return(bad_signal_name);
	    }
	}
	/* put the new pointer in place */
	str = nptr;
    }

    /* loop thru the string, killing processes */
    do
    {
	if (FUNC6(str, &procnum) == -1)
	{
	    FUNC0(str, 0);
	}
	else
	{
	    /* go in for the kill */
	    if (FUNC4(procnum, signum) == -1)
	    {
		/* chalk up an error */
		FUNC0(str, errno);
	    }
	}
    } while ((str = FUNC5(str)) != NULL);

    /* return appropriate error string */
    return(FUNC1());
}