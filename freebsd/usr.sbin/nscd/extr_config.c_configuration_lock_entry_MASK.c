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
struct configuration_entry {int /*<<< orphan*/  mp_cache_lock; int /*<<< orphan*/  negative_cache_lock; int /*<<< orphan*/  positive_cache_lock; } ;
typedef  enum config_entry_lock_type { ____Placeholder_config_entry_lock_type } config_entry_lock_type ;

/* Variables and functions */
#define  CELT_MULTIPART 130 
#define  CELT_NEGATIVE 129 
#define  CELT_POSITIVE 128 
 int /*<<< orphan*/  FUNC0 (void (*) (struct configuration_entry*,int)) ; 
 int /*<<< orphan*/  FUNC1 (void (*) (struct configuration_entry*,int)) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(struct configuration_entry *entry,
	enum config_entry_lock_type lock_type)
{
	FUNC0(configuration_lock_entry);
	FUNC2(entry != NULL);

	switch (lock_type) {
	case CELT_POSITIVE:
		FUNC3(&entry->positive_cache_lock);
		break;
	case CELT_NEGATIVE:
		FUNC3(&entry->negative_cache_lock);
		break;
	case CELT_MULTIPART:
		FUNC3(&entry->mp_cache_lock);
		break;
	default:
		/* should be unreachable */
		break;
	}
	FUNC1(configuration_lock_entry);
}