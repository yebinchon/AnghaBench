#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct cache_mp_read_session_ {int /*<<< orphan*/  current_item; struct cache_mp_entry_* parent_entry; } ;
struct TYPE_10__ {scalar_t__ tv_sec; } ;
struct TYPE_7__ {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_8__ {TYPE_2__ max_lifetime; } ;
struct cache_mp_entry_ {TYPE_5__ last_request_time; int /*<<< orphan*/  (* get_time_func ) (TYPE_5__*) ;int /*<<< orphan*/  rs_size; int /*<<< orphan*/  rs_head; TYPE_4__* completed_write_session; TYPE_3__ mp_params; } ;
struct cache_entry_ {TYPE_1__* params; } ;
struct TYPE_9__ {int /*<<< orphan*/  items; } ;
struct TYPE_6__ {scalar_t__ entry_type; } ;

/* Variables and functions */
 scalar_t__ CET_MULTIPART ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct cache_mp_read_session_*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cache_mp_read_session_* (*) (struct cache_entry_*)) ; 
 int /*<<< orphan*/  FUNC3 (struct cache_mp_read_session_* (*) (struct cache_entry_*)) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct cache_mp_read_session_* FUNC5 (int,int) ; 
 int /*<<< orphan*/  entries ; 
 int /*<<< orphan*/  FUNC6 (struct cache_entry_*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 

struct cache_mp_read_session_ *
FUNC8(struct cache_entry_ *entry)
{
	struct cache_mp_entry_			*mp_entry;
	struct cache_mp_read_session_	*retval;

	FUNC2(open_cache_mp_read_session);
	FUNC4(entry != NULL);
	FUNC4(entry->params->entry_type == CET_MULTIPART);
	mp_entry = (struct cache_mp_entry_ *)entry;

	if (mp_entry->completed_write_session == NULL) {
		FUNC3(open_cache_mp_read_session);
		return (NULL);
	}

	if ((mp_entry->mp_params.max_lifetime.tv_sec != 0)
		|| (mp_entry->mp_params.max_lifetime.tv_usec != 0)) {
		if (mp_entry->last_request_time.tv_sec -
			mp_entry->last_request_time.tv_sec >
			mp_entry->mp_params.max_lifetime.tv_sec) {
			FUNC6(entry);
			FUNC3(open_cache_mp_read_session);
			return (NULL);
		}
	}

	retval = FUNC5(1,
		sizeof(*retval));
	FUNC4(retval != NULL);

	retval->parent_entry = mp_entry;
	retval->current_item = FUNC0(
		&mp_entry->completed_write_session->items);

	FUNC1(&mp_entry->rs_head, retval, entries);
	++mp_entry->rs_size;

	mp_entry->get_time_func(&mp_entry->last_request_time);
	FUNC3(open_cache_mp_read_session);
	return (retval);
}