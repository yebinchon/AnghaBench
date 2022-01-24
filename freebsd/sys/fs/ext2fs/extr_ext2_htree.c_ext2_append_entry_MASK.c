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
typedef  int uint16_t ;
struct ext2fs_direct_2 {int e2d_reclen; int /*<<< orphan*/  e2d_namlen; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ext2fs_direct_2*,struct ext2fs_direct_2*,int) ; 

__attribute__((used)) static void
FUNC2(char *block, uint32_t blksize,
    struct ext2fs_direct_2 *last_entry,
    struct ext2fs_direct_2 *new_entry, int csum_size)
{
	uint16_t entry_len;

	entry_len = FUNC0(last_entry->e2d_namlen);
	last_entry->e2d_reclen = entry_len;
	last_entry = (struct ext2fs_direct_2 *)((char *)last_entry + entry_len);
	new_entry->e2d_reclen = block + blksize - (char *)last_entry - csum_size;
	FUNC1(last_entry, new_entry, FUNC0(new_entry->e2d_namlen));
}