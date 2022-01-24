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
struct string_list {int dummy; } ;
struct dirent {char* d_name; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 struct dirent* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct string_list*,char*) ; 
 char* FUNC6 (char*,char const*,char*) ; 

__attribute__((used)) static int FUNC7(struct string_list *list, const char *path)
{
	DIR *dir;
	struct dirent *dent;
	char *name = NULL;
	char *subs[] = { "cur", "new", NULL };
	char **sub;
	int ret = -1;

	for (sub = subs; *sub; ++sub) {
		FUNC2(name);
		name = FUNC6("%s/%s", path, *sub);
		if ((dir = FUNC3(name)) == NULL) {
			if (errno == ENOENT)
				continue;
			FUNC1("cannot opendir %s", name);
			goto out;
		}

		while ((dent = FUNC4(dir)) != NULL) {
			if (dent->d_name[0] == '.')
				continue;
			FUNC2(name);
			name = FUNC6("%s/%s", *sub, dent->d_name);
			FUNC5(list, name);
		}

		FUNC0(dir);
	}

	ret = 0;

out:
	FUNC2(name);
	return ret;
}