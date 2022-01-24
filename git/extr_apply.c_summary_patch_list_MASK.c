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
struct patch {char* new_name; char* old_name; int score; scalar_t__ is_copy; scalar_t__ is_rename; int /*<<< orphan*/  old_mode; scalar_t__ is_delete; int /*<<< orphan*/  new_mode; scalar_t__ is_new; struct patch* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct patch*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct patch*) ; 

__attribute__((used)) static void FUNC4(struct patch *patch)
{
	struct patch *p;

	for (p = patch; p; p = p->next) {
		if (p->is_new)
			FUNC1("create", p->new_mode, p->new_name);
		else if (p->is_delete)
			FUNC1("delete", p->old_mode, p->old_name);
		else {
			if (p->is_rename || p->is_copy)
				FUNC3(p);
			else {
				if (p->score) {
					FUNC0(" rewrite %s (%d%%)\n",
					       p->new_name, p->score);
					FUNC2(p, 0);
				}
				else
					FUNC2(p, 1);
			}
		}
	}
}