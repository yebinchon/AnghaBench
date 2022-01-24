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
struct cache_mp_write_session_ {struct cache_mp_write_session_* value; int /*<<< orphan*/  items; } ;
struct cache_mp_data_item_ {struct cache_mp_data_item_* value; int /*<<< orphan*/  items; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct cache_mp_write_session_* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct cache_mp_write_session_*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void (*) (struct cache_mp_write_session_*)) ; 
 int /*<<< orphan*/  FUNC4 (void (*) (struct cache_mp_write_session_*)) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  entries ; 
 int /*<<< orphan*/  FUNC6 (struct cache_mp_write_session_*) ; 

__attribute__((used)) static void
FUNC7(struct cache_mp_write_session_ *ws)
{

	struct cache_mp_data_item_	*data_item;

	FUNC3(destroy_cache_mp_write_session);
	FUNC5(ws != NULL);
	while (!FUNC0(&ws->items)) {
		data_item = FUNC1(&ws->items);
		FUNC2(&ws->items, data_item, entries);
		FUNC6(data_item->value);
		FUNC6(data_item);
	}

	FUNC6(ws);
	FUNC4(destroy_cache_mp_write_session);
}