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
struct urlmatch_current_candidate_value {int value_is_null; int /*<<< orphan*/  value; } ;
struct string_list_item {struct urlmatch_current_candidate_value* util; } ;
struct string_list {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct string_list_item* FUNC3 (struct string_list*,char const*) ; 
 struct urlmatch_current_candidate_value* FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(const char *var, const char *value, void *cb)
{
	struct string_list *values = cb;
	struct string_list_item *item = FUNC3(values, var);
	struct urlmatch_current_candidate_value *matched = item->util;

	if (!matched) {
		matched = FUNC4(sizeof(*matched));
		FUNC1(&matched->value, 0);
		item->util = matched;
	} else {
		FUNC2(&matched->value);
	}

	if (value) {
		FUNC0(&matched->value, value);
		matched->value_is_null = 0;
	} else {
		matched->value_is_null = 1;
	}
	return 0;
}