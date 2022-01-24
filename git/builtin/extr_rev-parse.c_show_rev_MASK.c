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
struct object_id {int dummy; } ;

/* Variables and functions */
 int DO_REVS ; 
 scalar_t__ SHOW_SYMBOLIC_FULL ; 
 scalar_t__ abbrev ; 
 scalar_t__ abbrev_ref ; 
 int /*<<< orphan*/  abbrev_ref_strict ; 
 int /*<<< orphan*/ * def ; 
 int FUNC0 (char const*,int /*<<< orphan*/ ,struct object_id*,char**) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int filter ; 
 char const* FUNC2 (struct object_id const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char const* FUNC4 (struct object_id const*) ; 
 char* FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 scalar_t__ symbolic ; 

__attribute__((used)) static void FUNC8(int type, const struct object_id *oid, const char *name)
{
	if (!(filter & DO_REVS))
		return;
	def = NULL;

	if ((symbolic || abbrev_ref) && name) {
		if (symbolic == SHOW_SYMBOLIC_FULL || abbrev_ref) {
			struct object_id discard;
			char *full;

			switch (FUNC0(name, FUNC7(name), &discard, &full)) {
			case 0:
				/*
				 * Not found -- not a ref.  We could
				 * emit "name" here, but symbolic-full
				 * users are interested in finding the
				 * refs spelled in full, and they would
				 * need to filter non-refs if we did so.
				 */
				break;
			case 1: /* happy */
				if (abbrev_ref)
					full = FUNC5(full,
						abbrev_ref_strict);
				FUNC6(type, full);
				break;
			default: /* ambiguous */
				FUNC1("refname '%s' is ambiguous", name);
				break;
			}
			FUNC3(full);
		} else {
			FUNC6(type, name);
		}
	}
	else if (abbrev)
		FUNC6(type, FUNC2(oid, abbrev));
	else
		FUNC6(type, FUNC4(oid));
}