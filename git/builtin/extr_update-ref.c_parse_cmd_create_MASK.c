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
struct strbuf {char* buf; } ;
struct ref_transaction {int dummy; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int create_reflog_flag ; 
 int default_flags ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (struct object_id*) ; 
 char const line_termination ; 
 int /*<<< orphan*/  msg ; 
 scalar_t__ FUNC3 (struct strbuf*,char const**,struct object_id*,char*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC4 (struct strbuf*,char const**) ; 
 scalar_t__ FUNC5 (struct ref_transaction*,char*,struct object_id*,int,int /*<<< orphan*/ ,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*) ; 
 int update_flags ; 

__attribute__((used)) static const char *FUNC7(struct ref_transaction *transaction,
				    struct strbuf *input, const char *next)
{
	struct strbuf err = STRBUF_INIT;
	char *refname;
	struct object_id new_oid;

	refname = FUNC4(input, &next);
	if (!refname)
		FUNC0("create: missing <ref>");

	if (FUNC3(input, &next, &new_oid, "create", refname, 0))
		FUNC0("create %s: missing <newvalue>", refname);

	if (FUNC2(&new_oid))
		FUNC0("create %s: zero <newvalue>", refname);

	if (*next != line_termination)
		FUNC0("create %s: extra input: %s", refname, next);

	if (FUNC5(transaction, refname, &new_oid,
				   update_flags | create_reflog_flag,
				   msg, &err))
		FUNC0("%s", err.buf);

	update_flags = default_flags;
	FUNC1(refname);
	FUNC6(&err);

	return next;
}