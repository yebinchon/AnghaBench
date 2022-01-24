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
struct tracking_name_data {char const* default_remote; char* src_ref; int num_matches; char* default_dst_ref; char* default_dst_oid; char const* dst_ref; struct object_id* dst_oid; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 struct tracking_name_data TRACKING_NAME_DATA_INIT ; 
 int /*<<< orphan*/  check_tracking_name ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct tracking_name_data*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const**) ; 
 int /*<<< orphan*/  FUNC3 (struct object_id*,char*) ; 
 char* FUNC4 (char*,char const*) ; 

const char *FUNC5(const char *name, struct object_id *oid,
				 int *dwim_remotes_matched)
{
	struct tracking_name_data cb_data = TRACKING_NAME_DATA_INIT;
	const char *default_remote = NULL;
	if (!FUNC2("checkout.defaultremote", &default_remote))
		cb_data.default_remote = default_remote;
	cb_data.src_ref = FUNC4("refs/heads/%s", name);
	cb_data.dst_oid = oid;
	FUNC0(check_tracking_name, &cb_data);
	if (dwim_remotes_matched)
		*dwim_remotes_matched = cb_data.num_matches;
	FUNC1(cb_data.src_ref);
	FUNC1((char *)default_remote);
	if (cb_data.num_matches == 1) {
		FUNC1(cb_data.default_dst_ref);
		FUNC1(cb_data.default_dst_oid);
		return cb_data.dst_ref;
	}
	FUNC1(cb_data.dst_ref);
	if (cb_data.default_dst_ref) {
		FUNC3(oid, cb_data.default_dst_oid);
		FUNC1(cb_data.default_dst_oid);
		return cb_data.default_dst_ref;
	}
	return NULL;
}