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
 char* FUNC0 (char*,char) ; 

__attribute__((used)) static char *
FUNC1(char *str)
{
    if ((str = FUNC0(str, ' ')) == NULL)
    {
	return(NULL);
    }
    *str = '\0';
    while (*++str == ' ') /* loop */;

    /* if there is nothing left of the string, return NULL */
    /* This fix is dedicated to Greg Earle */
    return(*str == '\0' ? NULL : str);
}