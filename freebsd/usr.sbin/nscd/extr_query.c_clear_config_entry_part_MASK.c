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
struct configuration_entry {int /*<<< orphan*/ * negative_cache_entry; int /*<<< orphan*/ * positive_cache_entry; } ;
typedef  int /*<<< orphan*/  cache_entry ;

/* Variables and functions */
 int /*<<< orphan*/  CELT_MULTIPART ; 
 int /*<<< orphan*/  CELT_NEGATIVE ; 
 int /*<<< orphan*/  CELT_POSITIVE ; 
 int /*<<< orphan*/  CTT_CLEAR ; 
 int /*<<< orphan*/  KPPT_LEFT ; 
 int /*<<< orphan*/  FUNC0 (void (*) (struct configuration_entry*,char const*,size_t)) ; 
 int /*<<< orphan*/  FUNC1 (void (*) (struct configuration_entry*,char const*,size_t)) ; 
 scalar_t__ FUNC2 (struct configuration_entry*,char const*,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (struct configuration_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct configuration_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct configuration_entry *config_entry,
	const char *eid_str, size_t eid_str_length)
{
	cache_entry *start, *finish, *mp_entry;
	FUNC0(clear_config_entry_part);
	FUNC3(config_entry, CELT_POSITIVE);
	if (config_entry->positive_cache_entry != NULL)
		FUNC6(
			config_entry->positive_cache_entry,
			CTT_CLEAR, eid_str, eid_str_length, KPPT_LEFT);
	FUNC4(config_entry, CELT_POSITIVE);

	FUNC3(config_entry, CELT_NEGATIVE);
	if (config_entry->negative_cache_entry != NULL)
		FUNC6(
			config_entry->negative_cache_entry,
			CTT_CLEAR, eid_str, eid_str_length, KPPT_LEFT);
	FUNC4(config_entry, CELT_NEGATIVE);

	FUNC3(config_entry, CELT_MULTIPART);
	if (FUNC2(config_entry,
		eid_str, &start, &finish) == 0) {
		for (mp_entry = start; mp_entry != finish; ++mp_entry)
			FUNC5(*mp_entry, CTT_CLEAR);
	}
	FUNC4(config_entry, CELT_MULTIPART);

	FUNC1(clear_config_entry_part);
}