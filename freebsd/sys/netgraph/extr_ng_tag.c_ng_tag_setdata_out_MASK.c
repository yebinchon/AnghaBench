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
struct ng_tag_hookout {scalar_t__ tag_data; int /*<<< orphan*/  tag_len; int /*<<< orphan*/  tag_id; int /*<<< orphan*/  tag_cookie; } ;
typedef  int /*<<< orphan*/  hook_p ;
typedef  TYPE_1__* hinfo_p ;
struct TYPE_3__ {struct ng_tag_hookout* out; void* out_tag_data; int /*<<< orphan*/  out_tag_len; int /*<<< orphan*/  out_tag_id; int /*<<< orphan*/  out_tag_cookie; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_NETGRAPH_TAG ; 
 int /*<<< orphan*/  M_WAITOK ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ng_tag_hookout const*,struct ng_tag_hookout*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ng_tag_hookout*,int /*<<< orphan*/ ) ; 
 struct ng_tag_hookout* FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(hook_p hook, const struct ng_tag_hookout *hp0)
{
	const hinfo_p hip = FUNC0(hook);
	struct ng_tag_hookout *hp;
	int size;

	/* Make a copy of the tag values and data. */
	size = FUNC1(hp0->tag_len);
	hp = FUNC4(size, M_NETGRAPH_TAG, M_WAITOK);
	/* M_WAITOK can't return NULL. */
	FUNC2(hp0, hp, size);

	/* Free previous tag, if any, and assign new one. */
	if (hip->out != NULL)
		FUNC3(hip->out, M_NETGRAPH_TAG);
	hip->out = hp;

	/* Fill internal values from API structures. */
	hip->out_tag_cookie = hip->out->tag_cookie;
	hip->out_tag_id = hip->out->tag_id;
	hip->out_tag_len = hip->out->tag_len;
	hip->out_tag_data = (void*)(hip->out->tag_data);
	return (0);
}