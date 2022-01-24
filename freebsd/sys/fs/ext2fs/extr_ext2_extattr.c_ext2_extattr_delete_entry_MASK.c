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
struct ext2fs_extattr_entry {int /*<<< orphan*/  e_name_len; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct ext2fs_extattr_entry* FUNC1 (struct ext2fs_extattr_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct ext2fs_extattr_entry*) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct ext2fs_extattr_entry*,struct ext2fs_extattr_entry*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct ext2fs_extattr_entry*,char*,int) ; 

__attribute__((used)) static void
FUNC5(char *off,
    struct ext2fs_extattr_entry *first_entry,
    struct ext2fs_extattr_entry *entry, char *end)
{
	char *pad;
	struct ext2fs_extattr_entry *next;

	/* Clean entry value */
	FUNC3(off, first_entry, entry, end);

	/* Clean the entry */
	next = first_entry;
	while (!FUNC2(next))
		next = FUNC1(next);

	pad = (char*)next + sizeof(uint32_t);

	FUNC4(entry, (char *)entry + FUNC0(entry->e_name_len),
	    pad - ((char *)entry + FUNC0(entry->e_name_len)));
}