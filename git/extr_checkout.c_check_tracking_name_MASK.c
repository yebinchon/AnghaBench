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
struct tracking_name_data {int /*<<< orphan*/  dst_ref; struct object_id* default_dst_oid; int /*<<< orphan*/  dst_oid; int /*<<< orphan*/  default_dst_ref; scalar_t__ default_remote; int /*<<< orphan*/  num_matches; int /*<<< orphan*/  src_ref; } ;
struct remote {int /*<<< orphan*/  name; } ;
struct refspec_item {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct refspec_item*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct object_id*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct remote*,struct refspec_item*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct object_id* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct remote *remote, void *cb_data)
{
	struct tracking_name_data *cb = cb_data;
	struct refspec_item query;
	FUNC2(&query, 0, sizeof(struct refspec_item));
	query.src = cb->src_ref;
	if (FUNC4(remote, &query) ||
	    FUNC1(query.dst, cb->dst_oid)) {
		FUNC0(query.dst);
		return 0;
	}
	cb->num_matches++;
	if (cb->default_remote && !FUNC5(remote->name, cb->default_remote)) {
		struct object_id *dst = FUNC6(sizeof(*cb->default_dst_oid));
		cb->default_dst_ref = FUNC7(query.dst);
		FUNC3(dst, cb->dst_oid);
		cb->default_dst_oid = dst;
	}
	if (cb->dst_ref) {
		FUNC0(query.dst);
		return 0;
	}
	cb->dst_ref = query.dst;
	return 0;
}