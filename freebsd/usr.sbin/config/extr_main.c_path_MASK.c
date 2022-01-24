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
 int /*<<< orphan*/  FUNC0 (char**,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  destdir ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 

char *
FUNC2(const char *file)
{
	char *cp = NULL;

	if (file)
		FUNC0(&cp, "%d/%s", destdir, file);
	else
		cp = FUNC1(destdir);
	return (cp);
}