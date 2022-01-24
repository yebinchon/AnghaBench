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
struct string_list_item {void* util; } ;
struct apply_state {int /*<<< orphan*/  symlink_changes; } ;

/* Variables and functions */
 struct string_list_item* FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 struct string_list_item* FUNC1 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static uintptr_t FUNC2(struct apply_state *state,
					  const char *path,
					  uintptr_t what)
{
	struct string_list_item *ent;

	ent = FUNC1(&state->symlink_changes, path);
	if (!ent) {
		ent = FUNC0(&state->symlink_changes, path);
		ent->util = (void *)0;
	}
	ent->util = (void *)(what | ((uintptr_t)ent->util));
	return (uintptr_t)ent->util;
}