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
 char const* AUTO_INCLUDE_PATH ; 
 int /*<<< orphan*/  F_OK ; 
 int FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct node*) ; 
 int /*<<< orphan*/  FUNC6 (struct node*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct node*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * yyin ; 

__attribute__((used)) static void
FUNC8(struct node *parent, const char *map)
{
	int error;

	FUNC1(map[0] != '-');
	FUNC1(map[0] != '/');

	error = FUNC0(AUTO_INCLUDE_PATH, F_OK);
	if (error != 0) {
		FUNC4(1, "directory services not configured;"
		    " %s does not exist", AUTO_INCLUDE_PATH);
	}

	yyin = FUNC3(AUTO_INCLUDE_PATH, map, NULL);
	FUNC1(yyin != NULL);

	FUNC7(parent, map, NULL);

	error = FUNC2(yyin);
	yyin = NULL;
	if (error != 0)
		FUNC4(1, "failed to handle remote map \"%s\"", map);

	FUNC6(parent, false);
	FUNC5(parent);
}