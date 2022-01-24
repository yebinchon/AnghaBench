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
struct index_state {int dummy; } ;
struct dir_struct {int nr; struct dir_entry** entries; } ;
struct dir_entry {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct index_state const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct index_state const*,int /*<<< orphan*/ ,struct dir_entry*) ; 
 int /*<<< orphan*/  tag_other ; 

__attribute__((used)) static void FUNC2(const struct index_state *istate,
			     const struct dir_struct *dir)
{
	int i;

	for (i = 0; i < dir->nr; i++) {
		struct dir_entry *ent = dir->entries[i];
		if (!FUNC0(istate, ent->name, ent->len))
			continue;
		FUNC1(istate, tag_other, ent);
	}
}