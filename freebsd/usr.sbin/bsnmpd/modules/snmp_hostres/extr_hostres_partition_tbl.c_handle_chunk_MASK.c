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
struct partition_entry {int size; int /*<<< orphan*/  flags; } ;
typedef  int off_t ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  int daddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  HR_PARTITION_FOUND ; 
 int INT_MAX ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct partition_entry* FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 struct partition_entry* FUNC3 (char const*) ; 

__attribute__((used)) static void
FUNC4(int32_t ds_index, const char *chunk_name, off_t chunk_size)
{
	struct partition_entry *entry;
	daddr_t k_size;

	FUNC1(chunk_name != NULL);
	FUNC1(chunk_name[0] != '\0');
	if (chunk_name == NULL || chunk_name[0] == '\0')
		return;

	FUNC0("ANALYZE chunk %s", chunk_name);

	if ((entry = FUNC3(chunk_name)) == NULL)
		if ((entry = FUNC2(ds_index,
		    chunk_name)) == NULL)
			return;

	entry->flags |= HR_PARTITION_FOUND;

	/* actual size may overflow the SNMP type */
	k_size = chunk_size / 1024;
	entry->size = (k_size > (off_t)INT_MAX ? INT_MAX : k_size);
}