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
 size_t FUNC0 (char*) ; 
 char* FUNC1 (char*,char) ; 
 int /*<<< orphan*/  FUNC2 (char**,char*,int,char*,char*) ; 

char *
FUNC3(char *dir, char *path)
{
	char *tail, *buf;
	size_t dirlen;

	dirlen = FUNC0(dir);
	while (dirlen != 0 && dir[dirlen - 1] == '/')
	    dirlen--;
	if ((tail = FUNC1(path, '/')) == NULL)
		tail = path;
	else
		tail++;
	FUNC2(&buf, "%.*s/%s", (int)dirlen, dir, tail);
	return (buf);
}