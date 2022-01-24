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
struct node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUTO_SPECIAL_PREFIX ; 
 int FUNC0 (char**,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (struct node*) ; 
 int /*<<< orphan*/  FUNC8 (struct node*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct node*,char const*) ; 
 int /*<<< orphan*/  FUNC10 (struct node*,char const*,char const*) ; 
 int /*<<< orphan*/ * yyin ; 

__attribute__((used)) static void
FUNC11(struct node *parent, const char *map, const char *key)
{
	char *path;
	int error, ret;

	FUNC1(map[0] == '-');

	/*
	 * +1 to skip leading "-" in map name.
	 */
	ret = FUNC0(&path, "%d/special_%s", AUTO_SPECIAL_PREFIX, map + 1);
	if (ret < 0)
		FUNC5(1, "asprintf");

	yyin = FUNC3(path, key, NULL);
	FUNC1(yyin != NULL);

	if (key == NULL) {
		FUNC9(parent, map);
	} else {
		FUNC10(parent, map, key);
	}

	error = FUNC2(yyin);
	yyin = NULL;
	if (error != 0)
		FUNC6(1, "failed to handle special map \"%s\"", map);

	FUNC8(parent, false);
	FUNC7(parent);

	FUNC4(path);
}