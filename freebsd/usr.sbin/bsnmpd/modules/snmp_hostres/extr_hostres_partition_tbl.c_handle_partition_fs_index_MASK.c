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
struct partition_entry {int /*<<< orphan*/  fs_Index; } ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,...) ; 
 struct partition_entry* FUNC1 (char const*) ; 

void
FUNC2(const char *name, int32_t fs_idx)
{
	struct partition_entry *entry;

	if ((entry = FUNC1(name)) == NULL) {
		FUNC0("%s IS MISSING from hrPartitionTable", name);
		return;
	}
	FUNC0("%s [FS index = %d] IS in hrPartitionTable", name, fs_idx);
	entry->fs_Index = fs_idx;
}