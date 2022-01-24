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
struct gcov_link {scalar_t__ dir; int /*<<< orphan*/  ext; } ;

/* Variables and functions */
 scalar_t__ SRC_TREE ; 
 char* FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * objtree ; 
 int /*<<< orphan*/ * srctree ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static char *
FUNC3(const char *filename, const struct gcov_link *ext)
{
	const char *rel;
	char *result;

	if (FUNC2(filename, objtree, FUNC1(objtree)) == 0) {
		rel = filename + FUNC1(objtree) + 1;
		if (ext->dir == SRC_TREE)
			result = FUNC0(srctree, rel, ext->ext);
		else
			result = FUNC0(objtree, rel, ext->ext);
	} else {
		/* External compilation. */
		result = FUNC0(NULL, filename, ext->ext);
	}

	return (result);
}