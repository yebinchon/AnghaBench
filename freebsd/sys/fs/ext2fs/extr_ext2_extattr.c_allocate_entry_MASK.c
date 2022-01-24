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
typedef  void* uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct ext2fs_extattr_entry {int e_name_len; int /*<<< orphan*/  e_name; void* e_hash; void* e_value_size; scalar_t__ e_value_block; int /*<<< orphan*/  e_value_offs; int /*<<< orphan*/  e_name_index; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (int,char const*) ; 
 char* FUNC1 (int,char const*) ; 
 struct ext2fs_extattr_entry* FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int) ; 
 int FUNC4 (char const*) ; 

__attribute__((used)) static struct ext2fs_extattr_entry *
FUNC5(const char *name, int attrnamespace, uint16_t offs,
    uint32_t size, uint32_t hash)
{
	const char *attr_name;
	int name_len;
	struct ext2fs_extattr_entry *entry;

	attr_name = FUNC1(attrnamespace, name);
	name_len = FUNC4(attr_name);

	entry = FUNC2(sizeof(struct ext2fs_extattr_entry) + name_len,
	    M_TEMP, M_WAITOK);

	entry->e_name_len = name_len;
	entry->e_name_index = FUNC0(attrnamespace, name);
	entry->e_value_offs = offs;
	entry->e_value_block = 0;
	entry->e_value_size = size;
	entry->e_hash = hash;
	FUNC3(entry->e_name, name, name_len);

	return (entry);
}