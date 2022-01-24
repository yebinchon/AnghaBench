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
 int /*<<< orphan*/  M_GCOV ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (char**,int /*<<< orphan*/ ,char*,char const*,char const*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*,char) ; 

__attribute__((used)) static char *
FUNC4(const char *dir, const char *path, const char *ext)
{
	char *target;
	char *old_ext;
	char *copy;

	copy = FUNC2(path, M_GCOV, M_NOWAIT);
	if (!copy)
		return (NULL);
	old_ext = FUNC3(copy, '.');
	if (old_ext)
		*old_ext = '\0';
	target = NULL;
	if (dir)
		FUNC0(&target, M_GCOV, "%s/%s.%s", dir, copy, ext);
	else
		FUNC0(&target, M_GCOV, "%s.%s", copy, ext);
	FUNC1(copy, M_GCOV);

	return (target);
}