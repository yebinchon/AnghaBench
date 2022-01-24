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
 char* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 
 scalar_t__ FUNC2 (char*) ; 

char *
FUNC3(char *subj)
{
	char *newsubj;

	if (subj == NULL)
		return (NULL);
	if ((subj[0] == 'r' || subj[0] == 'R') &&
	    (subj[1] == 'e' || subj[1] == 'E') &&
	    subj[2] == ':')
		return (subj);
	newsubj = FUNC0(FUNC2(subj) + 5);
	FUNC1(newsubj, "Re: %s", subj);
	return (newsubj);
}