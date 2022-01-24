#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct submodule_update_strategy {scalar_t__ type; int /*<<< orphan*/  command; } ;
struct TYPE_2__ {scalar_t__ type; int /*<<< orphan*/  command; } ;
struct submodule {TYPE_1__ update_strategy; int /*<<< orphan*/  name; } ;
struct repository {int dummy; } ;

/* Variables and functions */
 void* SM_UPDATE_CHECKOUT ; 
 scalar_t__ SM_UPDATE_MERGE ; 
 scalar_t__ SM_UPDATE_NONE ; 
 scalar_t__ SM_UPDATE_REBASE ; 
 scalar_t__ SM_UPDATE_UNSPECIFIED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  null_oid ; 
 scalar_t__ FUNC3 (char const*,struct submodule_update_strategy*) ; 
 int /*<<< orphan*/  FUNC4 (struct repository*,char*,char const**) ; 
 struct submodule* FUNC5 (struct repository*,int /*<<< orphan*/ *,char const*) ; 
 char* FUNC6 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct repository *r,
						int just_cloned,
						const char *path,
						const char *update,
						struct submodule_update_strategy *out)
{
	const struct submodule *sub = FUNC5(r, &null_oid, path);
	char *key;
	const char *val;

	key = FUNC6("submodule.%s.update", sub->name);

	if (update) {
		if (FUNC3(update, out) < 0)
			FUNC1(FUNC0("Invalid update mode '%s' for submodule path '%s'"),
				update, path);
	} else if (!FUNC4(r, key, &val)) {
		if (FUNC3(val, out) < 0)
			FUNC1(FUNC0("Invalid update mode '%s' configured for submodule path '%s'"),
				val, path);
	} else if (sub->update_strategy.type != SM_UPDATE_UNSPECIFIED) {
		out->type = sub->update_strategy.type;
		out->command = sub->update_strategy.command;
	} else
		out->type = SM_UPDATE_CHECKOUT;

	if (just_cloned &&
	    (out->type == SM_UPDATE_MERGE ||
	     out->type == SM_UPDATE_REBASE ||
	     out->type == SM_UPDATE_NONE))
		out->type = SM_UPDATE_CHECKOUT;

	FUNC2(key);
}