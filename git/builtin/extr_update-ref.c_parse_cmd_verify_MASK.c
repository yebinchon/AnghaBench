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
struct strbuf {int /*<<< orphan*/  buf; } ;
struct ref_transaction {int dummy; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PARSE_SHA1_OLD ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  default_flags ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char const line_termination ; 
 int /*<<< orphan*/  FUNC2 (struct object_id*) ; 
 scalar_t__ FUNC3 (struct strbuf*,char const**,struct object_id*,char*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC4 (struct strbuf*,char const**) ; 
 scalar_t__ FUNC5 (struct ref_transaction*,char*,struct object_id*,int /*<<< orphan*/ ,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*) ; 
 int /*<<< orphan*/  update_flags ; 

__attribute__((used)) static const char *FUNC7(struct ref_transaction *transaction,
				    struct strbuf *input, const char *next)
{
	struct strbuf err = STRBUF_INIT;
	char *refname;
	struct object_id old_oid;

	refname = FUNC4(input, &next);
	if (!refname)
		FUNC0("verify: missing <ref>");

	if (FUNC3(input, &next, &old_oid, "verify", refname,
			   PARSE_SHA1_OLD))
		FUNC2(&old_oid);

	if (*next != line_termination)
		FUNC0("verify %s: extra input: %s", refname, next);

	if (FUNC5(transaction, refname, &old_oid,
				   update_flags, &err))
		FUNC0("%s", err.buf);

	update_flags = default_flags;
	FUNC1(refname);
	FUNC6(&err);

	return next;
}