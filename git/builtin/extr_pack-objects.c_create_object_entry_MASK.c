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
typedef  int /*<<< orphan*/  uint32_t ;
struct packed_git {int dummy; } ;
struct object_id {int dummy; } ;
struct object_entry {int preferred_base; int no_try_delta; int /*<<< orphan*/  in_pack_offset; int /*<<< orphan*/  hash; } ;
typedef  int /*<<< orphan*/  off_t ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;

/* Variables and functions */
 int /*<<< orphan*/  nr_result ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct object_entry*,struct packed_git*) ; 
 int /*<<< orphan*/  FUNC1 (struct object_entry*,int) ; 
 struct object_entry* FUNC2 (int /*<<< orphan*/ *,struct object_id const*) ; 
 int /*<<< orphan*/  to_pack ; 

__attribute__((used)) static void FUNC3(const struct object_id *oid,
				enum object_type type,
				uint32_t hash,
				int exclude,
				int no_try_delta,
				struct packed_git *found_pack,
				off_t found_offset)
{
	struct object_entry *entry;

	entry = FUNC2(&to_pack, oid);
	entry->hash = hash;
	FUNC1(entry, type);
	if (exclude)
		entry->preferred_base = 1;
	else
		nr_result++;
	if (found_pack) {
		FUNC0(&to_pack, entry, found_pack);
		entry->in_pack_offset = found_offset;
	}

	entry->no_try_delta = no_try_delta;
}