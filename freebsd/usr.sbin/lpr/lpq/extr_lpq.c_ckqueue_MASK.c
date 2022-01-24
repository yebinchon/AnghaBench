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
struct printer {char* spool_dir; } ;
struct dirent {char* d_name; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 struct dirent* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(const struct printer *pp)
{
	register struct dirent *d;
	DIR *dirp;
	char *spooldir;

	spooldir = pp->spool_dir;
	if ((dirp = FUNC1(spooldir)) == NULL)
		return (-1);
	while ((d = FUNC2(dirp)) != NULL) {
		if (d->d_name[0] != 'c' || d->d_name[1] != 'f')
			continue;	/* daemon control files only */
		FUNC0(dirp);
		return (1);		/* found something */
	}
	FUNC0(dirp);
	return (0);
}