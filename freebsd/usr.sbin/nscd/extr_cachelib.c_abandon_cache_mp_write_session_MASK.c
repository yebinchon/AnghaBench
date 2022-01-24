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
struct cache_mp_write_session_ {TYPE_2__* parent_entry; } ;
struct TYPE_4__ {int /*<<< orphan*/  ws_size; int /*<<< orphan*/  ws_head; TYPE_1__* params; } ;
struct TYPE_3__ {scalar_t__ entry_type; } ;

/* Variables and functions */
 scalar_t__ CET_MULTIPART ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct cache_mp_write_session_*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void (*) (struct cache_mp_write_session_*)) ; 
 int /*<<< orphan*/  FUNC2 (void (*) (struct cache_mp_write_session_*)) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct cache_mp_write_session_*) ; 
 int /*<<< orphan*/  entries ; 

void
FUNC5(struct cache_mp_write_session_ *ws)
{

	FUNC1(abandon_cache_mp_write_session);
	FUNC3(ws != NULL);
	FUNC3(ws->parent_entry != NULL);
	FUNC3(ws->parent_entry->params->entry_type == CET_MULTIPART);

	FUNC0(&ws->parent_entry->ws_head, ws, entries);
	--ws->parent_entry->ws_size;

	FUNC4(ws);
	FUNC2(abandon_cache_mp_write_session);
}