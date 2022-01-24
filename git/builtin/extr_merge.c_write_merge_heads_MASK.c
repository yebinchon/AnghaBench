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
struct strbuf {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct object_id {int dummy; } ;
struct merge_remote_desc {TYPE_1__* obj; } ;
struct commit_list {struct commit* item; struct commit_list* next; } ;
struct TYPE_4__ {struct object_id oid; } ;
struct commit {TYPE_2__ object; } ;
struct TYPE_3__ {struct object_id oid; } ;

/* Variables and functions */
 scalar_t__ FF_NO ; 
 struct strbuf STRBUF_INIT ; 
 scalar_t__ fast_forward ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct merge_remote_desc* FUNC2 (struct commit*) ; 
 int /*<<< orphan*/  FUNC3 (struct object_id*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct commit_list *remoteheads)
{
	struct commit_list *j;
	struct strbuf buf = STRBUF_INIT;

	for (j = remoteheads; j; j = j->next) {
		struct object_id *oid;
		struct commit *c = j->item;
		struct merge_remote_desc *desc;

		desc = FUNC2(c);
		if (desc && desc->obj) {
			oid = &desc->obj->oid;
		} else {
			oid = &c->object.oid;
		}
		FUNC4(&buf, "%s\n", FUNC3(oid));
	}
	FUNC8(FUNC0(the_repository), buf.buf, buf.len);

	FUNC7(&buf);
	if (fast_forward == FF_NO)
		FUNC5(&buf, "no-ff");
	FUNC8(FUNC1(the_repository), buf.buf, buf.len);
	FUNC6(&buf);
}