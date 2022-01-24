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
struct strbuf {int /*<<< orphan*/  buf; } ;
struct rebase_options {int /*<<< orphan*/  head_name; TYPE_2__* onto; } ;
struct TYPE_3__ {int /*<<< orphan*/  oid; } ;
struct TYPE_4__ {TYPE_1__ object; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  RESET_HEAD_REFS_ONLY ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 

__attribute__((used)) static int FUNC5(struct rebase_options *opts)
{
	struct strbuf orig_head_reflog = STRBUF_INIT, head_reflog = STRBUF_INIT;
	int ret;

	if (!opts->head_name)
		return 0; /* nothing to move back to */

	if (!opts->onto)
		FUNC0("move_to_original_branch without onto");

	FUNC3(&orig_head_reflog, "rebase finished: %s onto %s",
		    opts->head_name, FUNC1(&opts->onto->object.oid));
	FUNC3(&head_reflog, "rebase finished: returning to %s",
		    opts->head_name);
	ret = FUNC2(NULL, "", opts->head_name, RESET_HEAD_REFS_ONLY,
			 orig_head_reflog.buf, head_reflog.buf);

	FUNC4(&orig_head_reflog);
	FUNC4(&head_reflog);
	return ret;
}