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
struct string_list_item {char* string; scalar_t__ util; } ;
struct string_list {int strdup_strings; int nr; struct string_list_item* items; } ;

/* Variables and functions */
 struct string_list STRING_LIST_INIT_NODUP ; 
 int FUNC0 (int /*<<< orphan*/ ,struct string_list*) ; 
 int /*<<< orphan*/  get_one_entry ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct string_list*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct string_list*) ; 
 scalar_t__ verbose ; 

__attribute__((used)) static int FUNC5(void)
{
	struct string_list list = STRING_LIST_INIT_NODUP;
	int result;

	list.strdup_strings = 1;
	result = FUNC0(get_one_entry, &list);

	if (!result) {
		int i;

		FUNC4(&list);
		for (i = 0; i < list.nr; i++) {
			struct string_list_item *item = list.items + i;
			if (verbose)
				FUNC1("%s\t%s\n", item->string,
					item->util ? (const char *)item->util : "");
			else {
				if (i && !FUNC2((item - 1)->string, item->string))
					continue;
				FUNC1("%s\n", item->string);
			}
		}
	}
	FUNC3(&list, 1);
	return result;
}