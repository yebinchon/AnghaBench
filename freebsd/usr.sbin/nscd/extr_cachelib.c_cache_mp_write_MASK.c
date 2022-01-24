#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct cache_mp_write_session_ {scalar_t__ items_size; int /*<<< orphan*/  items; TYPE_3__* parent_entry; } ;
struct cache_mp_data_item_ {size_t value_size; int /*<<< orphan*/ * value; } ;
struct TYPE_5__ {scalar_t__ max_elemsize; } ;
struct TYPE_6__ {TYPE_2__ mp_params; TYPE_1__* params; } ;
struct TYPE_4__ {scalar_t__ entry_type; } ;

/* Variables and functions */
 scalar_t__ CET_MULTIPART ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct cache_mp_data_item_*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int (*) (struct cache_mp_write_session_*,char*,size_t)) ; 
 int /*<<< orphan*/  FUNC2 (int (*) (struct cache_mp_write_session_*,char*,size_t)) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct cache_mp_data_item_* FUNC4 (int,int) ; 
 int /*<<< orphan*/  entries ; 
 int /*<<< orphan*/ * FUNC5 (size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,size_t) ; 

int
FUNC7(struct cache_mp_write_session_ *ws, char *data,
	size_t data_size)
{
	struct cache_mp_data_item_	*new_item;

	FUNC1(cache_mp_write);
	FUNC3(ws != NULL);
	FUNC3(ws->parent_entry != NULL);
	FUNC3(ws->parent_entry->params->entry_type == CET_MULTIPART);

	if ((ws->parent_entry->mp_params.max_elemsize > 0) &&
		(ws->parent_entry->mp_params.max_elemsize == ws->items_size)) {
		FUNC2(cache_mp_write);
		return (-1);
	}

	new_item = FUNC4(1,
		sizeof(*new_item));
	FUNC3(new_item != NULL);

	new_item->value = FUNC5(data_size);
	FUNC3(new_item->value != NULL);
	FUNC6(new_item->value, data, data_size);
	new_item->value_size = data_size;

	FUNC0(&ws->items, new_item, entries);
	++ws->items_size;

	FUNC2(cache_mp_write);
	return (0);
}