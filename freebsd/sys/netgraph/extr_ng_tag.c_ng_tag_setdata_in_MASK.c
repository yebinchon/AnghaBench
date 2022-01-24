#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ng_tag_hookin {scalar_t__ tag_data; int /*<<< orphan*/  strip; int /*<<< orphan*/  tag_len; int /*<<< orphan*/  tag_id; int /*<<< orphan*/  tag_cookie; int /*<<< orphan*/  ifNotMatch; int /*<<< orphan*/  ifMatch; } ;
typedef  int /*<<< orphan*/  hook_p ;
typedef  TYPE_1__* hinfo_p ;
struct TYPE_3__ {struct ng_tag_hookin* in; void* in_tag_data; int /*<<< orphan*/  strip; int /*<<< orphan*/  in_tag_len; int /*<<< orphan*/  in_tag_id; int /*<<< orphan*/  in_tag_cookie; void* hi_nonmatch; void* hi_match; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_NETGRAPH_TAG ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ng_tag_hookin const*,struct ng_tag_hookin*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ng_tag_hookin*,int /*<<< orphan*/ ) ; 
 struct ng_tag_hookin* FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(hook_p hook, const struct ng_tag_hookin *hp0)
{
	const hinfo_p hip = FUNC1(hook);
	struct ng_tag_hookin *hp;
	int size;

	/* Make a copy of the tag values and data. */
	size = FUNC2(hp0->tag_len);
	hp = FUNC5(size, M_NETGRAPH_TAG, M_WAITOK);
	/* M_WAITOK can't return NULL. */
	FUNC3(hp0, hp, size);

	/* Free previous tag, if any, and assign new one. */
	if (hip->in != NULL)
		FUNC4(hip->in, M_NETGRAPH_TAG);
	hip->in = hp;

	/*
	 * Resolve hook names to pointers.
	 *
	 * As ng_findhook() is expensive operation to do it on every packet
	 * after tag matching check, we do it here and use resolved pointers
	 * where appropriate.
	 *
	 * XXX The drawback is that user can configure a hook to use
	 * ifMatch/ifNotMatch hooks that do not yet exist and will be added
	 * by user later, so that resolved pointers will be NULL even
	 * if the hook already exists, causing node to drop packets and
	 * user to report bugs.  We could do check for this situation on
	 * every hook creation with pointers correction, but that involves
	 * re-resolving for all pointers in all hooks, up to O(n^2) operations,
	 * so we better document this in man page for user not to do
	 * configuration before creating all hooks.
	 */
	hip->hi_match = FUNC6(FUNC0(hook), hip->in->ifMatch);
	hip->hi_nonmatch = FUNC6(FUNC0(hook), hip->in->ifNotMatch);

	/* Fill internal values from API structures. */
	hip->in_tag_cookie = hip->in->tag_cookie;
	hip->in_tag_id = hip->in->tag_id;
	hip->in_tag_len = hip->in->tag_len;
	hip->strip = hip->in->strip;
	hip->in_tag_data = (void*)(hip->in->tag_data);
	return (0);
}