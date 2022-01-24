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
typedef  int /*<<< orphan*/  ttybuf ;
struct stat {int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 int MAXPATHLEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 char* _PATH_DEV ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char*,char*) ; 
 scalar_t__ FUNC2 (char*,struct stat*) ; 

__attribute__((used)) static struct stat *
FUNC3(char *line)
{
	static struct stat sb;
	char ttybuf[MAXPATHLEN];

	(void)FUNC1(ttybuf, sizeof(ttybuf), "%s%s", _PATH_DEV, line);
	if (FUNC2(ttybuf, &sb) == 0 && FUNC0(sb.st_mode)) {
		return (&sb);
	} else
		return (NULL);
}