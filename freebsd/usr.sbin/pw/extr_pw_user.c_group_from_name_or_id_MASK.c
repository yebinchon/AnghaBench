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
typedef  int /*<<< orphan*/  uintmax_t ;
struct group {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EX_NOUSER ; 
 struct group* FUNC0 (int /*<<< orphan*/ ) ; 
 struct group* FUNC1 (char*) ; 
 int /*<<< orphan*/  GID_MAX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const**) ; 

__attribute__((used)) static struct group *
FUNC4(char *name)
{
	const char *errstr = NULL;
	struct group *grp;
	uintmax_t id;

	if ((grp = FUNC1(name)) == NULL) {
		id = FUNC3(name, 0, GID_MAX, &errstr);
		if (errstr)
			FUNC2(EX_NOUSER, "group `%s' does not exist", name);
		grp = FUNC0(id);
		if (grp == NULL)
			FUNC2(EX_NOUSER, "group `%s' does not exist", name);
	}

	return (grp);
}