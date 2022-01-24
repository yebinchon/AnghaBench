#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct timeval {int dummy; } ;
struct cache_policy_item_ {char const* key; size_t key_size; char const creation_time; struct cache_policy_item_* connected_item; } ;
struct cache_policy_ {int /*<<< orphan*/  (* add_item_func ) (struct cache_policy_*,struct cache_policy_item_*) ;struct cache_policy_item_* (* create_item_func ) () ;} ;
struct cache_ht_item_data_ {char* key; size_t key_size; int confidence; size_t value_size; char const* value; struct cache_policy_item_* fifo_policy_item; } ;
struct cache_ht_item_ {int dummy; } ;
struct cache_entry_ {TYPE_1__* params; } ;
struct TYPE_4__ {int confidence_threshold; scalar_t__ max_elemsize; } ;
struct cache_common_entry_ {int policies_size; scalar_t__ items_size; struct cache_policy_** policies; TYPE_2__ common_params; int /*<<< orphan*/  (* get_time_func ) (char const*) ;int /*<<< orphan*/  items; } ;
typedef  scalar_t__ hashtable_index_t ;
struct TYPE_3__ {scalar_t__ entry_type; } ;

/* Variables and functions */
 scalar_t__ CET_COMMON ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct cache_ht_item_data_*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct cache_ht_item_data_* FUNC2 (int /*<<< orphan*/ ,struct cache_ht_item_*,struct cache_ht_item_data_*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct cache_ht_item_*,struct cache_ht_item_data_*) ; 
 struct cache_ht_item_* FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int (*) (struct cache_entry_*,char const*,size_t,char const*,size_t)) ; 
 int /*<<< orphan*/  FUNC6 (int (*) (struct cache_entry_*,char const*,size_t,char const*,size_t)) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  cache_elemsize_common_continue_func ; 
 int /*<<< orphan*/  cache_ht_ ; 
 int /*<<< orphan*/  FUNC8 (struct cache_common_entry_*,struct cache_policy_*,struct cache_policy_*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 
 void* FUNC10 (size_t) ; 
 scalar_t__ FUNC11 (char const*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct cache_ht_item_data_*,int /*<<< orphan*/ ,int) ; 
 struct cache_policy_item_* FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (char const*) ; 
 struct cache_policy_item_* FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (struct cache_policy_*,struct cache_policy_item_*) ; 
 int /*<<< orphan*/  FUNC18 (struct cache_policy_*,struct cache_policy_item_*) ; 

int
FUNC19(struct cache_entry_ *entry, const char *key, size_t key_size,
    	char const *value, size_t value_size)
{
	struct cache_common_entry_	*common_entry;
	struct cache_ht_item_data_	item_data, *find_res;
	struct cache_ht_item_		*item;
	hashtable_index_t	hash;

	struct cache_policy_		*policy, *connected_policy;
	struct cache_policy_item_	*policy_item;
	struct cache_policy_item_	*connected_policy_item;

	FUNC5(cache_write);
	FUNC7(entry != NULL);
	FUNC7(key != NULL);
	FUNC7(value != NULL);
	FUNC7(entry->params->entry_type == CET_COMMON);

	common_entry = (struct cache_common_entry_ *)entry;

	FUNC13(&item_data, 0, sizeof(struct cache_ht_item_data_));
	/* can't avoid the cast here */
	item_data.key = (char *)key;
	item_data.key_size = key_size;

	hash = FUNC0(cache_ht_, &common_entry->items,
		&item_data);
	FUNC7(hash < FUNC1(&common_entry->items));

	item = FUNC4(&(common_entry->items), hash);
	find_res = FUNC2(cache_ht_, item, &item_data);
	if (find_res != NULL) {
		if (find_res->confidence < common_entry->common_params.confidence_threshold) {
		  	/* duplicate entry is no error, if confidence is low */
			if ((find_res->value_size == value_size) &&
			    (FUNC11(find_res->value, value, value_size) == 0)) {
				/* increase confidence on exact match (key and values) */
				find_res->confidence++;
			} else {
				/* create new entry with low confidence, if value changed */
				FUNC9(item_data.value);
				item_data.value = FUNC10(value_size);
				FUNC7(item_data.value != NULL);
				FUNC12(item_data.value, value, value_size);
				item_data.value_size = value_size;
				find_res->confidence = 1;
			}
			FUNC6(cache_write);
			return (0);
		}
		FUNC6(cache_write);
		return (-1);
	}

	item_data.key = FUNC10(key_size);
	FUNC12(item_data.key, key, key_size);

	item_data.value = FUNC10(value_size);
	FUNC7(item_data.value != NULL);

	FUNC12(item_data.value, value, value_size);
	item_data.value_size = value_size;

	item_data.confidence = 1;

	policy_item = common_entry->policies[0]->create_item_func();
	policy_item->key = item_data.key;
	policy_item->key_size = item_data.key_size;
	common_entry->get_time_func(&policy_item->creation_time);

	if (common_entry->policies_size > 1) {
		connected_policy_item =
			common_entry->policies[1]->create_item_func();
		FUNC12(&connected_policy_item->creation_time,
			&policy_item->creation_time,
			sizeof(struct timeval));
		connected_policy_item->key = policy_item->key;
		connected_policy_item->key_size = policy_item->key_size;

		connected_policy_item->connected_item = policy_item;
		policy_item->connected_item = connected_policy_item;
	}

	item_data.fifo_policy_item = policy_item;

	common_entry->policies[0]->add_item_func(common_entry->policies[0],
		policy_item);
	if (common_entry->policies_size > 1)
		common_entry->policies[1]->add_item_func(
			common_entry->policies[1], connected_policy_item);

	FUNC3(cache_ht_, item, &item_data);
	++common_entry->items_size;

	if ((common_entry->common_params.max_elemsize != 0) &&
		(common_entry->items_size >
		common_entry->common_params.max_elemsize)) {
		if (common_entry->policies_size > 1) {
			policy = common_entry->policies[1];
			connected_policy = common_entry->policies[0];
		} else {
			policy = common_entry->policies[0];
			connected_policy = NULL;
		}

		FUNC8(common_entry, policy, connected_policy,
			cache_elemsize_common_continue_func);
	}

	FUNC6(cache_write);
	return (0);
}