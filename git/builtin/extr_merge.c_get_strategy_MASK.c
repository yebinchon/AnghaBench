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
struct strategy {int /*<<< orphan*/  attr; int /*<<< orphan*/ * name; } ;
struct cmdnames {int cnt; struct cmdname** names; } ;
struct cmdname {char* name; size_t len; } ;

/* Variables and functions */
 int FUNC0 (struct strategy*) ; 
 int /*<<< orphan*/  NO_TRIVIAL ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct cmdnames*,char*,size_t) ; 
 struct strategy* all_strategy ; 
 int /*<<< orphan*/  FUNC3 (struct cmdnames*,struct cmdnames*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct cmdnames*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,struct cmdnames*,struct cmdnames*) ; 
 int /*<<< orphan*/  FUNC8 (struct cmdnames*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC9 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ *,size_t) ; 
 struct strategy* FUNC11 (int,int) ; 
 int /*<<< orphan*/ * FUNC12 (char const*) ; 

__attribute__((used)) static struct strategy *FUNC13(const char *name)
{
	int i;
	struct strategy *ret;
	static struct cmdnames main_cmds, other_cmds;
	static int loaded;

	if (!name)
		return NULL;

	for (i = 0; i < FUNC0(all_strategy); i++)
		if (!FUNC9(name, all_strategy[i].name))
			return &all_strategy[i];

	if (!loaded) {
		struct cmdnames not_strategies;
		loaded = 1;

		FUNC8(&not_strategies, 0, sizeof(struct cmdnames));
		FUNC7("git-merge-", &main_cmds, &other_cmds);
		for (i = 0; i < main_cmds.cnt; i++) {
			int j, found = 0;
			struct cmdname *ent = main_cmds.names[i];
			for (j = 0; j < FUNC0(all_strategy); j++)
				if (!FUNC10(ent->name, all_strategy[j].name, ent->len)
						&& !all_strategy[j].name[ent->len])
					found = 1;
			if (!found)
				FUNC2(&not_strategies, ent->name, ent->len);
		}
		FUNC3(&main_cmds, &not_strategies);
	}
	if (!FUNC6(&main_cmds, name) && !FUNC6(&other_cmds, name)) {
		FUNC5(stderr, FUNC1("Could not find merge strategy '%s'.\n"), name);
		FUNC5(stderr, "%s", FUNC1("Available strategies are:"));
		for (i = 0; i < main_cmds.cnt; i++)
			FUNC5(stderr, " %s", main_cmds.names[i]->name);
		FUNC5(stderr, ".\n");
		if (other_cmds.cnt) {
			FUNC5(stderr, "%s", FUNC1("Available custom strategies are:"));
			for (i = 0; i < other_cmds.cnt; i++)
				FUNC5(stderr, " %s", other_cmds.names[i]->name);
			FUNC5(stderr, ".\n");
		}
		FUNC4(1);
	}

	ret = FUNC11(1, sizeof(struct strategy));
	ret->name = FUNC12(name);
	ret->attr = NO_TRIVIAL;
	return ret;
}