#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  struct git_attr {int attr_nr; int /*<<< orphan*/  name; } const git_attr ;
struct TYPE_6__ {int /*<<< orphan*/  map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct git_attr const*,char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int,struct git_attr const*) ; 
 struct git_attr const* FUNC3 (TYPE_1__*,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int) ; 
 TYPE_1__ g_attr_hashmap ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static const struct git_attr *FUNC8(const char *name, int namelen)
{
	struct git_attr *a;

	if (!FUNC4(name, namelen))
		return NULL;

	FUNC6(&g_attr_hashmap);

	a = FUNC3(&g_attr_hashmap, name, namelen);

	if (!a) {
		FUNC0(a, name, name, namelen);
		a->attr_nr = FUNC5(&g_attr_hashmap.map);

		FUNC2(&g_attr_hashmap, a->name, namelen, a);
		FUNC1(a->attr_nr ==
		       (FUNC5(&g_attr_hashmap.map) - 1));
	}

	FUNC7(&g_attr_hashmap);

	return a;
}