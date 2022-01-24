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
struct blame_scoreboard {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * ptr; } ;
struct blame_origin {struct blame_entry* suspects; TYPE_1__ file; } ;
struct blame_entry {struct blame_origin* suspect; struct blame_entry* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct blame_origin*) ; 
 int /*<<< orphan*/  FUNC1 (struct blame_origin*) ; 
 int /*<<< orphan*/  FUNC2 (struct blame_scoreboard*,struct blame_origin*,struct blame_entry*) ; 

__attribute__((used)) static void FUNC3(struct blame_scoreboard *sb,
			     struct blame_origin *origin, struct blame_origin *porigin)
{
	struct blame_entry *e, *suspects;

	if (!porigin->file.ptr && origin->file.ptr) {
		/* Steal its file */
		porigin->file = origin->file;
		origin->file.ptr = NULL;
	}
	suspects = origin->suspects;
	origin->suspects = NULL;
	for (e = suspects; e; e = e->next) {
		FUNC1(porigin);
		FUNC0(e->suspect);
		e->suspect = porigin;
	}
	FUNC2(sb, porigin, suspects);
}