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
 int /*<<< orphan*/  PARSE_SHA1_ALLOW_EMPTY ; 
 int /*<<< orphan*/  PARSE_SHA1_OLD ; 
 struct strbuf STRBUF_INIT ; 
 int create_reflog_flag ; 
 int default_flags ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char const line_termination ; 
 int /*<<< orphan*/  msg ; 
 scalar_t__ FUNC2 (struct strbuf*,char const**,struct object_id*,char*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (struct strbuf*,char const**) ; 
 scalar_t__ FUNC4 (struct ref_transaction*,char*,struct object_id*,struct object_id*,int,int /*<<< orphan*/ ,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*) ; 
 int update_flags ; 

__attribute__((used)) static const char *FUNC6(struct ref_transaction *transaction,
				    struct strbuf *input, const char *next)
{
	struct strbuf err = STRBUF_INIT;
	char *refname;
	struct object_id new_oid, old_oid;
	int have_old;

	refname = FUNC3(input, &next);
	if (!refname)
		FUNC0("update: missing <ref>");

	if (FUNC2(input, &next, &new_oid, "update", refname,
			   PARSE_SHA1_ALLOW_EMPTY))
		FUNC0("update %s: missing <newvalue>", refname);

	have_old = !FUNC2(input, &next, &old_oid, "update", refname,
				   PARSE_SHA1_OLD);

	if (*next != line_termination)
		FUNC0("update %s: extra input: %s", refname, next);

	if (FUNC4(transaction, refname,
				   &new_oid, have_old ? &old_oid : NULL,
				   update_flags | create_reflog_flag,
				   msg, &err))
		FUNC0("%s", err.buf);

	update_flags = default_flags;
	FUNC1(refname);
	FUNC5(&err);

	return next;
}