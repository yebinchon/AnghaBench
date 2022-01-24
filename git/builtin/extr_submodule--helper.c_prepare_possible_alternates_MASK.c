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
struct submodule_alternate_setup {char const* submodule_name; int /*<<< orphan*/  error_mode; struct string_list* reference; } ;
struct string_list {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SUBMODULE_ALTERNATE_ERROR_DIE ; 
 int /*<<< orphan*/  SUBMODULE_ALTERNATE_ERROR_IGNORE ; 
 int /*<<< orphan*/  SUBMODULE_ALTERNATE_ERROR_INFO ; 
 struct submodule_alternate_setup SUBMODULE_ALTERNATE_SETUP_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  add_possible_reference_from_superproject ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct submodule_alternate_setup*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char**) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 char* FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7(const char *sm_name,
		struct string_list *reference)
{
	char *sm_alternate = NULL, *error_strategy = NULL;
	struct submodule_alternate_setup sas = SUBMODULE_ALTERNATE_SETUP_INIT;

	FUNC4("submodule.alternateLocation", &sm_alternate);
	if (!sm_alternate)
		return;

	FUNC4("submodule.alternateErrorStrategy", &error_strategy);

	if (!error_strategy)
		error_strategy = FUNC6("die");

	sas.submodule_name = sm_name;
	sas.reference = reference;
	if (!FUNC5(error_strategy, "die"))
		sas.error_mode = SUBMODULE_ALTERNATE_ERROR_DIE;
	else if (!FUNC5(error_strategy, "info"))
		sas.error_mode = SUBMODULE_ALTERNATE_ERROR_INFO;
	else if (!FUNC5(error_strategy, "ignore"))
		sas.error_mode = SUBMODULE_ALTERNATE_ERROR_IGNORE;
	else
		FUNC1(FUNC0("Value '%s' for submodule.alternateErrorStrategy is not recognized"), error_strategy);

	if (!FUNC5(sm_alternate, "superproject"))
		FUNC2(add_possible_reference_from_superproject, &sas);
	else if (!FUNC5(sm_alternate, "no"))
		; /* do nothing */
	else
		FUNC1(FUNC0("Value '%s' for submodule.alternateLocation is not recognized"), sm_alternate);

	FUNC3(sm_alternate);
	FUNC3(error_strategy);
}