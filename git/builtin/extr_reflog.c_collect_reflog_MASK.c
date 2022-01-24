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
struct strbuf {int /*<<< orphan*/  buf; } ;
struct object_id {int dummy; } ;
struct collected_reflog {int /*<<< orphan*/  oid; } ;
struct collect_reflog_cb {scalar_t__ nr; struct collected_reflog** e; int /*<<< orphan*/  alloc; TYPE_1__* wt; } ;
struct TYPE_2__ {int /*<<< orphan*/  is_current; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct collected_reflog**,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct collected_reflog*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ REF_TYPE_NORMAL ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct object_id const*) ; 
 scalar_t__ FUNC3 (char const*) ; 
 int /*<<< orphan*/  reflog ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct strbuf*,char const*) ; 

__attribute__((used)) static int FUNC6(const char *ref, const struct object_id *oid, int unused, void *cb_data)
{
	struct collected_reflog *e;
	struct collect_reflog_cb *cb = cb_data;
	struct strbuf newref = STRBUF_INIT;

	/*
	 * Avoid collecting the same shared ref multiple times because
	 * they are available via all worktrees.
	 */
	if (!cb->wt->is_current && FUNC3(ref) == REF_TYPE_NORMAL)
		return 0;

	FUNC5(cb->wt, &newref, ref);
	FUNC1(e, reflog, newref.buf);
	FUNC4(&newref);

	FUNC2(&e->oid, oid);
	FUNC0(cb->e, cb->nr + 1, cb->alloc);
	cb->e[cb->nr++] = e;
	return 0;
}