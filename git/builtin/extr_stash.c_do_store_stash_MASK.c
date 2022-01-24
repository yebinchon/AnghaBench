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
struct object_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REF_FORCE_CREATE_REFLOG ; 
 int /*<<< orphan*/  UPDATE_REFS_MSG_ON_ERR ; 
 int /*<<< orphan*/  UPDATE_REFS_QUIET_ON_ERR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct object_id const*) ; 
 int /*<<< orphan*/  ref_stash ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC3 (char const*,int /*<<< orphan*/ ,struct object_id const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(const struct object_id *w_commit, const char *stash_msg,
			  int quiet)
{
	if (!stash_msg)
		stash_msg = "Created via \"git stash store\".";

	if (FUNC3(stash_msg, ref_stash, w_commit, NULL,
		       REF_FORCE_CREATE_REFLOG,
		       quiet ? UPDATE_REFS_QUIET_ON_ERR :
		       UPDATE_REFS_MSG_ON_ERR)) {
		if (!quiet) {
			FUNC1(stderr, FUNC0("Cannot update %s with %s"),
				   ref_stash, FUNC2(w_commit));
		}
		return -1;
	}

	return 0;
}