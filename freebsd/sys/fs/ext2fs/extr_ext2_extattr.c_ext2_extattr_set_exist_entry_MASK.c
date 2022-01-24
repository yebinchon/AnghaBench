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
typedef  int uint16_t ;
struct uio {scalar_t__ uio_resid; } ;
struct ext2fs_extattr_entry {int e_value_offs; scalar_t__ e_value_size; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (char*,struct ext2fs_extattr_entry*,struct ext2fs_extattr_entry*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,struct uio*) ; 

__attribute__((used)) static void
FUNC3(char *off,
    struct ext2fs_extattr_entry *first_entry,
    struct ext2fs_extattr_entry *entry,
    char *end, struct uio *uio)
{
	uint16_t min_offs;

	min_offs = FUNC1(off, first_entry, entry, end);

	entry->e_value_size = uio->uio_resid;
	if (entry->e_value_size)
		entry->e_value_offs = min_offs -
		    FUNC0(uio->uio_resid);
	else
		entry->e_value_offs = 0;

	FUNC2(off + entry->e_value_offs, entry->e_value_size, uio);
}