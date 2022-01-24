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
struct TYPE_2__ {struct blame_origin* ptr; } ;
struct blame_origin {scalar_t__ refcnt; struct blame_origin* next; int /*<<< orphan*/  commit; TYPE_1__ file; struct blame_origin* previous; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct blame_origin*) ; 
 struct blame_origin* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct blame_origin*) ; 

void FUNC4(struct blame_origin *o)
{
	if (o && --o->refcnt <= 0) {
		struct blame_origin *p, *l = NULL;
		if (o->previous)
			FUNC4(o->previous);
		FUNC1(o->file.ptr);
		/* Should be present exactly once in commit chain */
		for (p = FUNC2(o->commit); p; l = p, p = p->next) {
			if (p == o) {
				if (l)
					l->next = p->next;
				else
					FUNC3(o->commit, p->next);
				FUNC1(o);
				return;
			}
		}
		FUNC0("internal error in blame_origin_decref");
	}
}