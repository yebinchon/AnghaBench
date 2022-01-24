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
struct stat {int dummy; } ;
struct conf_entry {char* log; scalar_t__ firstcreate; } ;

/* Variables and functions */
 int MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char*) ; 
 int FUNC1 (char*,struct stat*) ; 
 int FUNC2 (char*,int) ; 
 scalar_t__ noaction ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,...) ; 
 scalar_t__ verbose ; 

__attribute__((used)) static void
FUNC4(const struct conf_entry *ent, char *dirpart)
{
	int res;
	char *s, *d;
	char mkdirpath[MAXPATHLEN];
	struct stat st;

	s = dirpart;
	d = mkdirpath;

	for (;;) {
		*d++ = *s++;
		if (*s != '/' && *s != '\0')
			continue;
		*d = '\0';
		res = FUNC1(mkdirpath, &st);
		if (res != 0) {
			if (noaction) {
				FUNC3("\tmkdir %s\n", mkdirpath);
			} else {
				res = FUNC2(mkdirpath, 0755);
				if (res != 0)
					FUNC0(1, "Error on mkdir(\"%s\") for -a",
					    mkdirpath);
			}
		}
		if (*s == '\0')
			break;
	}
	if (verbose) {
		if (ent->firstcreate)
			FUNC3("Created directory '%s' for new %s\n",
			    dirpart, ent->log);
		else
			FUNC3("Created directory '%s' for -a\n", dirpart);
	}
}