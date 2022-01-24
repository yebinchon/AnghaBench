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
struct dmar_map_entry {void* free_down; void* free_after; } ;

/* Variables and functions */
 void* FUNC0 (void*,void*) ; 
 struct dmar_map_entry* FUNC1 (struct dmar_map_entry*,int /*<<< orphan*/ ) ; 
 struct dmar_map_entry* FUNC2 (struct dmar_map_entry*,int /*<<< orphan*/ ) ; 
 struct dmar_map_entry* FUNC3 (struct dmar_map_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rb_entry ; 

__attribute__((used)) static void
FUNC4(struct dmar_map_entry *entry)
{
	struct dmar_map_entry *l, *r;

	for (; entry != NULL; entry = FUNC2(entry, rb_entry)) {
		l = FUNC1(entry, rb_entry);
		r = FUNC3(entry, rb_entry);
		if (l == NULL && r == NULL) {
			entry->free_down = entry->free_after;
		} else if (l == NULL && r != NULL) {
			entry->free_down = FUNC0(entry->free_after, r->free_down);
		} else if (/*l != NULL && */ r == NULL) {
			entry->free_down = FUNC0(entry->free_after, l->free_down);
		} else /* if (l != NULL && r != NULL) */ {
			entry->free_down = FUNC0(entry->free_after, l->free_down);
			entry->free_down = FUNC0(entry->free_down, r->free_down);
		}
	}
}