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
struct pathent {char* path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct pathent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 void* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/  pathlist ; 
 size_t FUNC4 (char const*) ; 

__attribute__((used)) static void
FUNC5(const char *path)
{
	struct pathent* pe;
	size_t len;

	len = FUNC4(path);
	if ((pe = FUNC2(sizeof(*pe))) == NULL ||
	    (pe->path = FUNC2(len + 2)) == NULL)
		FUNC1(1, "malloc");
	FUNC3(pe->path, path, len);
	if (len > 0 && path[len - 1] != '/')
		pe->path[len++] = '/';
	pe->path[len] = '\0';
	FUNC0(&pathlist, pe, next);
}