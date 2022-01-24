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
struct object_entry {int dummy; } ;

/* Variables and functions */
 struct object_entry* FUNC0 (struct object_entry*) ; 
 struct object_entry* FUNC1 (struct object_entry*) ; 
 struct object_entry* FUNC2 (struct object_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct object_entry**,unsigned int*,struct object_entry*) ; 

__attribute__((used)) static void FUNC4(struct object_entry **wo,
					   unsigned int *endp,
					   struct object_entry *e)
{
	int add_to_order = 1;
	while (e) {
		if (add_to_order) {
			struct object_entry *s;
			/* add this node... */
			FUNC3(wo, endp, e);
			/* all its siblings... */
			for (s = FUNC2(e); s; s = FUNC2(s)) {
				FUNC3(wo, endp, s);
			}
		}
		/* drop down a level to add left subtree nodes if possible */
		if (FUNC1(e)) {
			add_to_order = 1;
			e = FUNC1(e);
		} else {
			add_to_order = 0;
			/* our sibling might have some children, it is next */
			if (FUNC2(e)) {
				e = FUNC2(e);
				continue;
			}
			/* go back to our parent node */
			e = FUNC0(e);
			while (e && !FUNC2(e)) {
				/* we're on the right side of a subtree, keep
				 * going up until we can go right again */
				e = FUNC0(e);
			}
			if (!e) {
				/* done- we hit our original root node */
				return;
			}
			/* pass it off to sibling at this level */
			e = FUNC2(e);
		}
	};
}