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
struct ext2fs_extattr_entry {int e_name_len; int e_value_size; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 struct ext2fs_extattr_entry* FUNC1 (struct ext2fs_extattr_entry*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct ext2fs_extattr_entry*) ; 

__attribute__((used)) static int
FUNC4(struct ext2fs_extattr_entry *first_entry,
    struct ext2fs_extattr_entry *exist_entry, int header_size,
    int name_len, int new_size)
{
	struct ext2fs_extattr_entry *entry;
	int size;

	size = header_size;
	size += sizeof(uint32_t);

	if (NULL == exist_entry) {
		size += FUNC0(name_len);
		size += FUNC2(new_size);
	}

	if (first_entry)
		for (entry = first_entry; !FUNC3(entry);
		    entry = FUNC1(entry)) {
			if (entry != exist_entry)
				size += FUNC0(entry->e_name_len) +
				    FUNC2(entry->e_value_size);
			else
				size += FUNC0(entry->e_name_len) +
				    FUNC2(new_size);
		}

	return (size);
}