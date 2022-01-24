#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* str; struct TYPE_3__* next; } ;
typedef  TYPE_1__ strlst_t ;

/* Variables and functions */
 int MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*,char*) ; 
 TYPE_1__* srcdirs ; 
 char* FUNC3 (char*) ; 

char *FUNC4(char *progname)
{
	char path[MAXPATHLEN];
	strlst_t *dir;
	char *srcdir;

	for (dir = srcdirs; dir != NULL; dir = dir->next) {
		FUNC2(path, MAXPATHLEN, "%s/%s", dir->str, progname);
		if (!FUNC0(path))
			continue;

		if ((srcdir = FUNC3(path)) == NULL)
			FUNC1();

		return srcdir;
	}
	return NULL;
}