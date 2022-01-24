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
struct merge_remote_desc {TYPE_1__* obj; } ;
struct commit_extra_header {char* value; unsigned long len; struct commit_extra_header* next; int /*<<< orphan*/  key; } ;
struct commit {int dummy; } ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;
struct TYPE_2__ {int /*<<< orphan*/  oid; } ;

/* Variables and functions */
 int OBJ_TAG ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct merge_remote_desc* FUNC1 (struct commit*) ; 
 unsigned long FUNC2 (char*,unsigned long) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int*,unsigned long*) ; 
 struct commit_extra_header* FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(struct commit *parent, struct commit_extra_header ***tail)
{
	struct merge_remote_desc *desc;
	struct commit_extra_header *mergetag;
	char *buf;
	unsigned long size, len;
	enum object_type type;

	desc = FUNC1(parent);
	if (!desc || !desc->obj)
		return;
	buf = FUNC3(&desc->obj->oid, &type, &size);
	if (!buf || type != OBJ_TAG)
		goto free_return;
	len = FUNC2(buf, size);
	if (size == len)
		goto free_return;
	/*
	 * We could verify this signature and either omit the tag when
	 * it does not validate, but the integrator may not have the
	 * public key of the signer of the tag he is merging, while a
	 * later auditor may have it while auditing, so let's not run
	 * verify-signed-buffer here for now...
	 *
	 * if (verify_signed_buffer(buf, len, buf + len, size - len, ...))
	 *	warn("warning: signed tag unverified.");
	 */
	mergetag = FUNC4(1, sizeof(*mergetag));
	mergetag->key = FUNC5("mergetag");
	mergetag->value = buf;
	mergetag->len = size;

	**tail = mergetag;
	*tail = &mergetag->next;
	return;

free_return:
	FUNC0(buf);
}