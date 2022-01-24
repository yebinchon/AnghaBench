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
struct ref_array_item {char* refname; scalar_t__ kind; } ;
struct ref_array {int nr; struct ref_array_item** items; } ;

/* Variables and functions */
 scalar_t__ FILTER_REFS_DETACHED_HEAD ; 
 scalar_t__ FILTER_REFS_REMOTES ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char const**) ; 
 int FUNC3 (char const*) ; 

__attribute__((used)) static int FUNC4(struct ref_array *refs, int remote_bonus)
{
	int i, max = 0;
	for (i = 0; i < refs->nr; i++) {
		struct ref_array_item *it = refs->items[i];
		const char *desc = it->refname;
		int w;

		FUNC2(it->refname, "refs/heads/", &desc);
		FUNC2(it->refname, "refs/remotes/", &desc);
		if (it->kind == FILTER_REFS_DETACHED_HEAD) {
			char *head_desc = FUNC1();
			w = FUNC3(head_desc);
			FUNC0(head_desc);
		} else
			w = FUNC3(desc);

		if (it->kind == FILTER_REFS_REMOTES)
			w += remote_bonus;
		if (w > max)
			max = w;
	}
	return max;
}