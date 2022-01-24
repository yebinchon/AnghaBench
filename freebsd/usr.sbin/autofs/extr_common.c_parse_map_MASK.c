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
 int /*<<< orphan*/  AUTO_MAP_PREFIX ; 
 int /*<<< orphan*/  F_OK ; 
 int FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (char**,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char const*,...) ; 
 char* FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (char*) ; 
 int /*<<< orphan*/ * FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC11 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC13 (struct node*) ; 
 int /*<<< orphan*/  FUNC14 (struct node*,int) ; 
 void FUNC15 (struct node*,char const*) ; 
 int /*<<< orphan*/  FUNC16 (struct node*,char const*,char const*) ; 
 void FUNC17 (struct node*,char const*,char const*) ; 
 int /*<<< orphan*/ * yyin ; 

void
FUNC18(struct node *parent, const char *map, const char *key,
    bool *wildcards)
{
	char *path = NULL;
	int error, ret;
	bool executable;

	FUNC2(map != NULL);
	FUNC2(map[0] != '\0');

	FUNC10("parsing map \"%s\"", map);

	if (wildcards != NULL)
		*wildcards = false;

	if (map[0] == '-') {
		if (wildcards != NULL)
			*wildcards = true;
		return (FUNC17(parent, map, key));
	}

	if (map[0] == '/') {
		path = FUNC5(map);
	} else {
		ret = FUNC1(&path, "%d/%s", AUTO_MAP_PREFIX, map);
		if (ret < 0)
			FUNC11(1, "asprintf");
		FUNC10("map \"%s\" maps to \"%s\"", map, path);

		/*
		 * See if the file exists.  If not, try to obtain the map
		 * from directory services.
		 */
		error = FUNC0(path, F_OK);
		if (error != 0) {
			FUNC10("map file \"%s\" does not exist; falling "
			    "back to directory services", path);
			return (FUNC15(parent, map));
		}
	}

	executable = FUNC7(path);

	if (executable) {
		FUNC10("map \"%s\" is executable", map);

		if (wildcards != NULL)
			*wildcards = true;

		if (key != NULL) {
			yyin = FUNC4(path, key, NULL);
		} else {
			yyin = FUNC4(path, NULL);
		}
		FUNC2(yyin != NULL);
	} else {
		yyin = FUNC8(path, "r");
		if (yyin == NULL)
			FUNC11(1, "unable to open \"%s\"", path);
	}

	FUNC9(path);
	path = NULL;

	FUNC16(parent, map, executable ? key : NULL);

	if (executable) {
		error = FUNC3(yyin);
		yyin = NULL;
		if (error != 0) {
			FUNC12(1, "failed to handle executable map \"%s\"",
			    map);
		}
	} else {
		FUNC6(yyin);
	}
	yyin = NULL;

	FUNC10("done parsing map \"%s\"", map);

	FUNC14(parent, false);
	FUNC13(parent);
}