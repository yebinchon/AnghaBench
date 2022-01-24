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
typedef  int uint32_t ;
struct ext2fs_extattr_header {int h_hash; } ;
struct ext2fs_extattr_entry {int e_hash; } ;
typedef  int /*<<< orphan*/  hash ;

/* Variables and functions */
 struct ext2fs_extattr_entry* FUNC0 (struct ext2fs_extattr_header*) ; 
 int EXT2_EXTATTR_BLOCK_HASH_SHIFT ; 
 struct ext2fs_extattr_entry* FUNC1 (struct ext2fs_extattr_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct ext2fs_extattr_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct ext2fs_extattr_header*,struct ext2fs_extattr_entry*) ; 

__attribute__((used)) static void
FUNC4(struct ext2fs_extattr_header *header,
    struct ext2fs_extattr_entry *entry)
{
	struct ext2fs_extattr_entry *here;
	uint32_t hash = 0;

	FUNC3(header, entry);

	here = FUNC0(header+1);
	while (!FUNC2(here)) {
		if (!here->e_hash) {
			/* Block is not shared if an entry's hash value == 0 */
			hash = 0;
			break;
		}

		hash = (hash << EXT2_EXTATTR_BLOCK_HASH_SHIFT) ^
		    (hash >> (8*sizeof(hash) - EXT2_EXTATTR_BLOCK_HASH_SHIFT)) ^
		    here->e_hash;

		here = FUNC1(here);
	}

	header->h_hash = hash;
}