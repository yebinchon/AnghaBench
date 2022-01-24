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
struct commit_list {int dummy; } ;
struct commit_extra_header {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct commit_list*,struct commit_extra_header***) ; 
 int FUNC1 (char const*,size_t,struct object_id const*,struct commit_list*,struct object_id*,char const*,char const*,struct commit_extra_header*) ; 
 int /*<<< orphan*/  FUNC2 (struct commit_extra_header*) ; 

int FUNC3(const char *msg, size_t msg_len, const struct object_id *tree,
		struct commit_list *parents, struct object_id *ret,
		const char *author, const char *sign_commit)
{
	struct commit_extra_header *extra = NULL, **tail = &extra;
	int result;

	FUNC0(parents, &tail);
	result = FUNC1(msg, msg_len, tree, parents, ret,
				      author, sign_commit, extra);
	FUNC2(extra);
	return result;
}