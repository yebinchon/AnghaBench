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
 int FUNC0 (char*) ; 
 int screenheight ; 
 char* FUNC1 (char*) ; 

int
FUNC2(void)
{
	int s;
	char *cp;

	if ((cp = FUNC1("screen")) != NULL && (s = FUNC0(cp)) > 0)
		return (s);
	return (screenheight - 4);
}