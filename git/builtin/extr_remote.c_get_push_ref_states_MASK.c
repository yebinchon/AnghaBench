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
struct string_list_item {struct push_info* util; } ;
struct remote {int /*<<< orphan*/  push; scalar_t__ mirror; } ;
struct TYPE_4__ {int strdup_strings; } ;
struct ref_states {TYPE_2__ push; struct remote* remote; } ;
struct ref {int /*<<< orphan*/  old_oid; int /*<<< orphan*/  new_oid; int /*<<< orphan*/  name; int /*<<< orphan*/  force; TYPE_1__* peer_ref; struct ref* next; } ;
struct push_info {int /*<<< orphan*/  status; int /*<<< orphan*/  dest; int /*<<< orphan*/  forced; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; int /*<<< orphan*/  new_oid; } ;

/* Variables and functions */
 int /*<<< orphan*/  MATCH_REFS_NONE ; 
 int /*<<< orphan*/  PUSH_STATUS_CREATE ; 
 int /*<<< orphan*/  PUSH_STATUS_DELETE ; 
 int /*<<< orphan*/  PUSH_STATUS_FASTFORWARD ; 
 int /*<<< orphan*/  PUSH_STATUS_OUTOFDATE ; 
 int /*<<< orphan*/  PUSH_STATUS_UPTODATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct ref* FUNC1 (struct ref const*) ; 
 int /*<<< orphan*/  FUNC2 (struct ref*) ; 
 struct ref* FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ref*,struct ref**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct string_list_item* FUNC10 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 struct push_info* FUNC11 (int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(const struct ref *remote_refs,
	struct ref_states *states)
{
	struct remote *remote = states->remote;
	struct ref *ref, *local_refs, *push_map;
	if (remote->mirror)
		return 0;

	local_refs = FUNC3();
	push_map = FUNC1(remote_refs);

	FUNC6(local_refs, &push_map, &remote->push, MATCH_REFS_NONE);

	states->push.strdup_strings = 1;
	for (ref = push_map; ref; ref = ref->next) {
		struct string_list_item *item;
		struct push_info *info;

		if (!ref->peer_ref)
			continue;
		FUNC7(&ref->new_oid, &ref->peer_ref->new_oid);

		item = FUNC10(&states->push,
					  FUNC0(ref->peer_ref->name));
		item->util = FUNC11(1, sizeof(struct push_info));
		info = item->util;
		info->forced = ref->force;
		info->dest = FUNC12(FUNC0(ref->name));

		if (FUNC5(&ref->new_oid)) {
			info->status = PUSH_STATUS_DELETE;
		} else if (FUNC8(&ref->old_oid, &ref->new_oid))
			info->status = PUSH_STATUS_UPTODATE;
		else if (FUNC5(&ref->old_oid))
			info->status = PUSH_STATUS_CREATE;
		else if (FUNC4(&ref->old_oid) &&
			 FUNC9(&ref->new_oid, &ref->old_oid))
			info->status = PUSH_STATUS_FASTFORWARD;
		else
			info->status = PUSH_STATUS_OUTOFDATE;
	}
	FUNC2(local_refs);
	FUNC2(push_map);
	return 0;
}