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
struct ref_transaction {int dummy; } ;
struct ref {int /*<<< orphan*/  old_oid; TYPE_1__* peer_ref; struct ref* next; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct ref_transaction*,struct strbuf*) ; 
 struct ref_transaction* FUNC2 (struct strbuf*) ; 
 scalar_t__ FUNC3 (struct ref_transaction*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct ref_transaction*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*) ; 

__attribute__((used)) static void FUNC6(const struct ref *local_refs)
{
	const struct ref *r;

	struct ref_transaction *t;
	struct strbuf err = STRBUF_INIT;

	t = FUNC2(&err);
	if (!t)
		FUNC0("%s", err.buf);

	for (r = local_refs; r; r = r->next) {
		if (!r->peer_ref)
			continue;
		if (FUNC3(t, r->peer_ref->name, &r->old_oid,
					   0, NULL, &err))
			FUNC0("%s", err.buf);
	}

	if (FUNC1(t, &err))
		FUNC0("%s", err.buf);

	FUNC5(&err);
	FUNC4(t);
}