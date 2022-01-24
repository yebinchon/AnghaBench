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
struct string_list_item {scalar_t__ util; } ;
struct string_list {int dummy; } ;
struct ref {int /*<<< orphan*/  symref; int /*<<< orphan*/  name; struct ref* next; } ;

/* Variables and functions */
 struct string_list STRING_LIST_INIT_DUP ; 
 char* FUNC0 (char const*,char*,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct string_list*,char const*,int) ; 
 char* server_capabilities_v1 ; 
 int /*<<< orphan*/  FUNC2 (struct string_list*,int /*<<< orphan*/ ) ; 
 struct string_list_item* FUNC3 (struct string_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct string_list*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(struct ref *ref)
{
	struct string_list symref = STRING_LIST_INIT_DUP;
	const char *feature_list = server_capabilities_v1;

	while (feature_list) {
		int len;
		const char *val;

		val = FUNC0(feature_list, "symref", &len);
		if (!val)
			break;
		FUNC1(&symref, val, len);
		feature_list = val + 1;
	}
	FUNC4(&symref);

	for (; ref; ref = ref->next) {
		struct string_list_item *item;
		item = FUNC3(&symref, ref->name);
		if (!item)
			continue;
		ref->symref = FUNC5((char *)item->util);
	}
	FUNC2(&symref, 0);
}