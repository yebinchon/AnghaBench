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
struct string_list_item {void* util; } ;
struct string_list {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char) ; 
 char* FUNC2 (char*,char) ; 
 struct string_list_item* FUNC3 (struct string_list*,char*) ; 
 struct string_list_item* FUNC4 (struct string_list*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 char* FUNC6 (char const*,char const*) ; 
 scalar_t__ FUNC7 (struct string_list_item*) ; 
 char* FUNC8 (char*,int) ; 

__attribute__((used)) static void FUNC9(int which, struct string_list *people,
				   const char *buffer)
{
	char *name_buf, *name, *name_end;
	struct string_list_item *elem;
	const char *field;

	field = (which == 'a') ? "\nauthor " : "\ncommitter ";
	name = FUNC6(buffer, field);
	if (!name)
		return;
	name += FUNC5(field);
	name_end = FUNC2(name, '<');
	if (*name_end)
		name_end--;
	while (FUNC1(*name_end) && name <= name_end)
		name_end--;
	if (name_end < name)
		return;
	name_buf = FUNC8(name, name_end - name + 1);

	elem = FUNC4(people, name_buf);
	if (!elem) {
		elem = FUNC3(people, name_buf);
		elem->util = (void *)0;
	}
	elem->util = (void*)(FUNC7(elem) + 1);
	FUNC0(name_buf);
}