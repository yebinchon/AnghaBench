#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct strbuf {int /*<<< orphan*/  buf; } ;
struct pretty_print_context {int dummy; } ;
struct object_id {int dummy; } ;
struct notes_tree {int dummy; } ;
struct notes_merge_options {void* local_ref; } ;
struct commit {TYPE_3__* parents; } ;
typedef  int /*<<< orphan*/  pretty_ctx ;
struct TYPE_6__ {TYPE_2__* item; } ;
struct TYPE_4__ {int /*<<< orphan*/  oid; } ;
struct TYPE_5__ {TYPE_1__ object; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  UPDATE_REFS_DIE_ON_ERR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  combine_notes_overwrite ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct commit*,char*,struct strbuf*,struct pretty_print_context*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (struct notes_tree*) ; 
 scalar_t__ FUNC5 (char*,struct object_id*) ; 
 int /*<<< orphan*/  FUNC6 (struct notes_tree*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct object_id*) ; 
 struct commit* FUNC8 (int /*<<< orphan*/ ,struct object_id*) ; 
 int /*<<< orphan*/  FUNC9 (struct pretty_print_context*,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (struct notes_merge_options*) ; 
 scalar_t__ FUNC11 (struct notes_merge_options*,struct notes_tree*,struct commit*,struct object_id*) ; 
 int /*<<< orphan*/  FUNC12 (struct object_id*) ; 
 int /*<<< orphan*/  FUNC13 (struct object_id*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (struct commit*) ; 
 void* FUNC15 (char*,int /*<<< orphan*/ ,struct object_id*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct strbuf*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC18 (struct strbuf*) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,void*,struct object_id*,struct object_id*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct notes_tree* FUNC20 (int,int) ; 

__attribute__((used)) static int FUNC21(struct notes_merge_options *o)
{
	struct strbuf msg = STRBUF_INIT;
	struct object_id oid, parent_oid;
	struct notes_tree *t;
	struct commit *partial;
	struct pretty_print_context pretty_ctx;
	void *local_ref_to_free;
	int ret;

	/*
	 * Read partial merge result from .git/NOTES_MERGE_PARTIAL,
	 * and target notes ref from .git/NOTES_MERGE_REF.
	 */

	if (FUNC5("NOTES_MERGE_PARTIAL", &oid))
		FUNC1(FUNC0("failed to read ref NOTES_MERGE_PARTIAL"));
	else if (!(partial = FUNC8(the_repository, &oid)))
		FUNC1(FUNC0("could not find commit from NOTES_MERGE_PARTIAL."));
	else if (FUNC14(partial))
		FUNC1(FUNC0("could not parse commit from NOTES_MERGE_PARTIAL."));

	if (partial->parents)
		FUNC13(&parent_oid, &partial->parents->item->object.oid);
	else
		FUNC12(&parent_oid);

	t = FUNC20(1, sizeof(struct notes_tree));
	FUNC6(t, "NOTES_MERGE_PARTIAL", combine_notes_overwrite, 0);

	o->local_ref = local_ref_to_free =
		FUNC15("NOTES_MERGE_REF", 0, &oid, NULL);
	if (!o->local_ref)
		FUNC1(FUNC0("failed to resolve NOTES_MERGE_REF"));

	if (FUNC11(o, t, partial, &oid))
		FUNC1(FUNC0("failed to finalize notes merge"));

	/* Reuse existing commit message in reflog message */
	FUNC9(&pretty_ctx, 0, sizeof(pretty_ctx));
	FUNC2(partial, "%s", &msg, &pretty_ctx);
	FUNC18(&msg);
	FUNC16(&msg, 0, "notes: ", 7);
	FUNC19(msg.buf, o->local_ref, &oid,
		   FUNC7(&parent_oid) ? NULL : &parent_oid,
		   0, UPDATE_REFS_DIE_ON_ERR);

	FUNC4(t);
	FUNC17(&msg);
	ret = FUNC10(o);
	FUNC3(local_ref_to_free);
	return ret;
}