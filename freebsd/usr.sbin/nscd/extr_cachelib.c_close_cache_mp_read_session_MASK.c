#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct cache_mp_read_session_ {TYPE_1__* parent_entry; } ;
struct TYPE_2__ {scalar_t__ rs_size; int /*<<< orphan*/ * pending_write_session; int /*<<< orphan*/ * completed_write_session; int /*<<< orphan*/  rs_head; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct cache_mp_read_session_*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void (*) (struct cache_mp_read_session_*)) ; 
 int /*<<< orphan*/  FUNC2 (void (*) (struct cache_mp_read_session_*)) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cache_mp_read_session_*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  entries ; 

void
FUNC6(struct cache_mp_read_session_ *rs)
{

	FUNC1(close_cache_mp_read_session);
	FUNC3(rs != NULL);
	FUNC3(rs->parent_entry != NULL);

	FUNC0(&rs->parent_entry->rs_head, rs, entries);
	--rs->parent_entry->rs_size;

	if ((rs->parent_entry->rs_size == 0) &&
		(rs->parent_entry->pending_write_session != NULL)) {
		FUNC5(
			rs->parent_entry->completed_write_session);
		rs->parent_entry->completed_write_session =
			rs->parent_entry->pending_write_session;
		rs->parent_entry->pending_write_session = NULL;
	}

	FUNC4(rs);
	FUNC2(close_cache_mp_read_session);
}