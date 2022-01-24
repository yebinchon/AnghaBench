#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  entry_name; } ;
struct TYPE_8__ {TYPE_3__ cep; } ;
struct TYPE_5__ {int /*<<< orphan*/  entry_name; } ;
struct TYPE_6__ {TYPE_1__ cep; } ;
struct configuration_entry {scalar_t__ positive_cache_entry; scalar_t__ negative_cache_entry; TYPE_4__ negative_cache_params; TYPE_2__ positive_cache_params; } ;
struct configuration {int dummy; } ;
struct cache_params {int /*<<< orphan*/  get_time_func; } ;
struct cache_entry_params {int dummy; } ;
typedef  int /*<<< orphan*/  cache ;

/* Variables and functions */
 scalar_t__ INVALID_CACHE_ENTRY ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  (*) (struct configuration*)) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  (*) (struct configuration*)) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 size_t FUNC4 (struct configuration*) ; 
 struct configuration_entry* FUNC5 (struct configuration*,size_t) ; 
 void* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  get_time_func ; 
 int /*<<< orphan*/  FUNC7 (struct cache_params*) ; 
 int /*<<< orphan*/  FUNC8 (struct cache_params*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,struct cache_entry_params*) ; 

__attribute__((used)) static cache
FUNC10(struct configuration *config)
{
	struct cache_params params;
	cache retval;

	struct configuration_entry *config_entry;
	size_t	size, i;
	int res;

	FUNC1(init_cache_);

	FUNC8(&params, 0, sizeof(struct cache_params));
	params.get_time_func = get_time_func;
	retval = FUNC7(&params);

	size = FUNC4(config);
	for (i = 0; i < size; ++i) {
		config_entry = FUNC5(config, i);
	    	/*
	    	 * We should register common entries now - multipart entries
	    	 * would be registered automatically during the queries.
	    	 */
		res = FUNC9(retval, (struct cache_entry_params *)
			&config_entry->positive_cache_params);
		config_entry->positive_cache_entry = FUNC6(retval,
			config_entry->positive_cache_params.cep.entry_name);
		FUNC3(config_entry->positive_cache_entry !=
			INVALID_CACHE_ENTRY);

		res = FUNC9(retval, (struct cache_entry_params *)
			&config_entry->negative_cache_params);
		config_entry->negative_cache_entry = FUNC6(retval,
			config_entry->negative_cache_params.cep.entry_name);
		FUNC3(config_entry->negative_cache_entry !=
			INVALID_CACHE_ENTRY);
	}

	FUNC0("cache", "cache was successfully initialized");
	FUNC2(init_cache_);
	return (retval);
}