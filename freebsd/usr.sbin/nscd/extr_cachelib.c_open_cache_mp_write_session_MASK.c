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
struct cache_mp_write_session_ {struct cache_mp_entry_* parent_entry; int /*<<< orphan*/  items; } ;
struct TYPE_4__ {scalar_t__ max_sessions; } ;
struct cache_mp_entry_ {scalar_t__ ws_size; int /*<<< orphan*/  ws_head; TYPE_2__ mp_params; } ;
struct cache_entry_ {TYPE_1__* params; } ;
struct TYPE_3__ {scalar_t__ entry_type; } ;

/* Variables and functions */
 scalar_t__ CET_MULTIPART ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct cache_mp_write_session_*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cache_mp_write_session_* (*) (struct cache_entry_*)) ; 
 int /*<<< orphan*/  FUNC3 (struct cache_mp_write_session_* (*) (struct cache_entry_*)) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct cache_mp_write_session_* FUNC5 (int,int) ; 
 int /*<<< orphan*/  entries ; 

struct cache_mp_write_session_ *
FUNC6(struct cache_entry_ *entry)
{
	struct cache_mp_entry_	*mp_entry;
	struct cache_mp_write_session_	*retval;

	FUNC2(open_cache_mp_write_session);
	FUNC4(entry != NULL);
	FUNC4(entry->params->entry_type == CET_MULTIPART);
	mp_entry = (struct cache_mp_entry_ *)entry;

	if ((mp_entry->mp_params.max_sessions > 0) &&
		(mp_entry->ws_size == mp_entry->mp_params.max_sessions)) {
		FUNC3(open_cache_mp_write_session);
		return (NULL);
	}

	retval = FUNC5(1,
		sizeof(*retval));
	FUNC4(retval != NULL);

	FUNC0(&retval->items);
	retval->parent_entry = mp_entry;

	FUNC1(&mp_entry->ws_head, retval, entries);
	++mp_entry->ws_size;

	FUNC3(open_cache_mp_write_session);
	return (retval);
}