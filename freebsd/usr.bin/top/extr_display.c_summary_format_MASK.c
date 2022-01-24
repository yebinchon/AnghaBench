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
typedef  int /*<<< orphan*/  rbuf ;

/* Variables and functions */
 char const* FUNC0 (int) ; 
 char const* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,float) ; 
 char* FUNC3 (char*,char const*) ; 

__attribute__((used)) static void
FUNC4(char *str, int *numbers, const char * const *names)
{
    char *p;
    int num;
    const char *thisname;
    char rbuf[6];

    /* format each number followed by its string */
    p = str;
    while ((thisname = *names++) != NULL)
    {
	/* get the number to format */
	num = *numbers++;

	/* display only non-zero numbers */
	if (num > 0)
	{
	    /* is this number in kilobytes? */
	    if (thisname[0] == 'K')
	    {
		/* yes: format it as a memory value */
		p = FUNC3(p, FUNC0(num));

		/* skip over the K, since it was included by format_k */
		p = FUNC3(p, thisname+1);
	    }
	    /* is this number a ratio? */
	    else if (thisname[0] == ':')
	    {
		(void) FUNC2(rbuf, sizeof(rbuf), "%.2f",
		    (float)*(numbers - 2) / (float)num);
		p = FUNC3(p, rbuf);
		p = FUNC3(p, thisname);
	    }
	    else
	    {
		p = FUNC3(p, FUNC1(num));
		p = FUNC3(p, thisname);
	    }
	}

	/* ignore negative numbers, but display corresponding string */
	else if (num < 0)
	{
	    p = FUNC3(p, thisname);
	}
    }

    /* if the last two characters in the string are ", ", delete them */
    p -= 2;
    if (p >= str && p[0] == ',' && p[1] == ' ')
    {
	*p = '\0';
    }
}