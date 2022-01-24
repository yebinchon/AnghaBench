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
struct prison {char* pr_path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,char*,int) ; 

__attribute__((used)) static char *
FUNC3(struct prison *pr1, struct prison *pr2)
{
	char *path1, *path2;
	int len1;

	path1 = pr1->pr_path;
	path2 = pr2->pr_path;
	if (!FUNC0(path1, "/"))
		return (path2);
	len1 = FUNC1(path1);
	if (FUNC2(path1, path2, len1))
		return (path2);
	if (path2[len1] == '\0')
		return "/";
	if (path2[len1] == '/')
		return (path2 + len1);
	return (path2);
}