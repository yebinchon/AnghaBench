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
struct string_list {int nr; TYPE_1__* items; } ;
struct ref {struct ref* next; int /*<<< orphan*/  old_oid; int /*<<< orphan*/  name; int /*<<< orphan*/  symref; } ;
struct object_id {int dummy; } ;
struct TYPE_2__ {char const* string; } ;

/* Variables and functions */
 struct string_list STRING_LIST_INIT_DUP ; 
 struct ref* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct object_id*) ; 
 scalar_t__ FUNC3 (char const*,struct object_id*,char const**) ; 
 scalar_t__ FUNC4 (char const*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC5 (struct string_list*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct string_list*,char const*,char,int) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 char* FUNC8 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(const char *line, struct ref ***list)
{
	int ret = 1;
	int i = 0;
	struct object_id old_oid;
	struct ref *ref;
	struct string_list line_sections = STRING_LIST_INIT_DUP;
	const char *end;

	/*
	 * Ref lines have a number of fields which are space deliminated.  The
	 * first field is the OID of the ref.  The second field is the ref
	 * name.  Subsequent fields (symref-target and peeled) are optional and
	 * don't have a particular order.
	 */
	if (FUNC6(&line_sections, line, ' ', -1) < 2) {
		ret = 0;
		goto out;
	}

	if (FUNC3(line_sections.items[i++].string, &old_oid, &end) ||
	    *end) {
		ret = 0;
		goto out;
	}

	ref = FUNC0(line_sections.items[i++].string);

	FUNC2(&ref->old_oid, &old_oid);
	**list = ref;
	*list = &ref->next;

	for (; i < line_sections.nr; i++) {
		const char *arg = line_sections.items[i].string;
		if (FUNC4(arg, "symref-target:", &arg))
			ref->symref = FUNC7(arg);

		if (FUNC4(arg, "peeled:", &arg)) {
			struct object_id peeled_oid;
			char *peeled_name;
			struct ref *peeled;
			if (FUNC3(arg, &peeled_oid, &end) || *end) {
				ret = 0;
				goto out;
			}

			peeled_name = FUNC8("%s^{}", ref->name);
			peeled = FUNC0(peeled_name);

			FUNC2(&peeled->old_oid, &peeled_oid);
			**list = peeled;
			*list = &peeled->next;

			FUNC1(peeled_name);
		}
	}

out:
	FUNC5(&line_sections, 0);
	return ret;
}