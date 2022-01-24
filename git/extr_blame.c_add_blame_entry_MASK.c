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
struct blame_entry {struct blame_entry* next; int /*<<< orphan*/  suspect; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct blame_entry*,struct blame_entry const*,int) ; 
 struct blame_entry* FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct blame_entry ***queue,
			    const struct blame_entry *src)
{
	struct blame_entry *e = FUNC2(sizeof(*e));
	FUNC1(e, src, sizeof(*e));
	FUNC0(e->suspect);

	e->next = **queue;
	**queue = e;
	*queue = &e->next;
}