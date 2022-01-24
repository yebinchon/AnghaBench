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
struct ext2fs_htree_lookup_level {scalar_t__ h_entries; struct ext2fs_htree_entry* h_entry; } ;
struct ext2fs_htree_entry {int dummy; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct ext2fs_htree_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ext2fs_htree_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ext2fs_htree_entry*,struct ext2fs_htree_entry*,int) ; 

__attribute__((used)) static void
FUNC5(struct ext2fs_htree_lookup_level *level,
    uint32_t hash, uint32_t blk)
{
	struct ext2fs_htree_entry *target;
	int entries_num;

	target = level->h_entry + 1;
	entries_num = FUNC0(level->h_entries);

	FUNC4(target + 1, target, (char *)(level->h_entries + entries_num) -
	    (char *)target);
	FUNC1(target, blk);
	FUNC3(target, hash);
	FUNC2(level->h_entries, entries_num + 1);
}