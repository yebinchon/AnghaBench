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
struct string_list_item {char* util; } ;
struct string_list {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REFNAME_ALLOW_ONELEVEL ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*,char) ; 
 struct string_list_item* FUNC3 (struct string_list*,char*) ; 
 char* FUNC4 (char const*,int) ; 

__attribute__((used)) static void FUNC5(struct string_list *symref, const char *val, int len)
{
	char *sym, *target;
	struct string_list_item *item;

	if (!len)
		return; /* just "symref" */
	/* e.g. "symref=HEAD:refs/heads/master" */
	sym = FUNC4(val, len);
	target = FUNC2(sym, ':');
	if (!target)
		/* just "symref=something" */
		goto reject;
	*(target++) = '\0';
	if (FUNC0(sym, REFNAME_ALLOW_ONELEVEL) ||
	    FUNC0(target, REFNAME_ALLOW_ONELEVEL))
		/* "symref=bogus:pair */
		goto reject;
	item = FUNC3(symref, sym);
	item->util = target;
	return;
reject:
	FUNC1(sym);
	return;
}