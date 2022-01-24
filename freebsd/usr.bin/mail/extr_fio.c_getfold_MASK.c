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
 char* homedir ; 
 int FUNC0 (char*,int,char*,char*,char*) ; 
 int FUNC1 (char*,char*,int) ; 
 char* FUNC2 (char*) ; 

int
FUNC3(char *name, int namelen)
{
	char *folder;
	int copylen;

	if ((folder = FUNC2("folder")) == NULL)
		return (-1);
	if (*folder == '/')
		copylen = FUNC1(name, folder, namelen);
	else
		copylen = FUNC0(name, namelen, "%s/%s",
		    homedir ? homedir : ".", folder);
	return (copylen < 0 || copylen >= namelen ? (-1) : (0));
}