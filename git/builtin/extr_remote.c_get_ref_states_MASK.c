#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct string_list_item {int /*<<< orphan*/  util; } ;
struct TYPE_8__ {int strdup_strings; } ;
struct ref_states {TYPE_3__ stale; TYPE_3__ tracked; TYPE_3__ new_refs; TYPE_2__* remote; } ;
struct ref {int /*<<< orphan*/  name; struct ref* next; TYPE_1__* peer_ref; } ;
struct TYPE_9__ {int nr; int /*<<< orphan*/ * raw; int /*<<< orphan*/ * items; } ;
struct TYPE_7__ {TYPE_5__ fetch; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ref*) ; 
 scalar_t__ FUNC4 (struct ref const*,int /*<<< orphan*/ *,struct ref***,int) ; 
 struct ref* FUNC5 (TYPE_5__*,struct ref*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct string_list_item* FUNC7 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(const struct ref *remote_refs, struct ref_states *states)
{
	struct ref *fetch_map = NULL, **tail = &fetch_map;
	struct ref *ref, *stale_refs;
	int i;

	for (i = 0; i < states->remote->fetch.nr; i++)
		if (FUNC4(remote_refs, &states->remote->fetch.items[i], &tail, 1))
			FUNC2(FUNC0("Could not get fetch map for refspec %s"),
				states->remote->fetch.raw[i]);

	states->new_refs.strdup_strings = 1;
	states->tracked.strdup_strings = 1;
	states->stale.strdup_strings = 1;
	for (ref = fetch_map; ref; ref = ref->next) {
		if (!ref->peer_ref || !FUNC6(ref->peer_ref->name))
			FUNC7(&states->new_refs, FUNC1(ref->name));
		else
			FUNC7(&states->tracked, FUNC1(ref->name));
	}
	stale_refs = FUNC5(&states->remote->fetch, fetch_map);
	for (ref = stale_refs; ref; ref = ref->next) {
		struct string_list_item *item =
			FUNC7(&states->stale, FUNC1(ref->name));
		item->util = FUNC9(ref->name);
	}
	FUNC3(stale_refs);
	FUNC3(fetch_map);

	FUNC8(&states->new_refs);
	FUNC8(&states->tracked);
	FUNC8(&states->stale);

	return 0;
}