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
 char* NULLUNIT ; 
 scalar_t__ FUNC0 (char*,char*) ; 

__attribute__((used)) static int 
FUNC1(char **one, char **two)
{
	while (*one || *two) {
		if (!*one && *two != NULLUNIT)
			return 1;
		if (!*two && *one != NULLUNIT)
			return 1;
		if (*one == NULLUNIT)
			one++;
		else if (*two == NULLUNIT)
			two++;
		else if (FUNC0(*one, *two))
			return 1;
		else {
			one++;
			two++;
		}
	}
	return 0;
}