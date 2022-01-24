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
typedef  enum object_type { ____Placeholder_object_type } object_type ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct object_id*,struct object_id*,struct strbuf*,int) ; 
 int FUNC2 (char*,char const*,...) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct object_id*,int /*<<< orphan*/ *) ; 
 struct ref_transaction* FUNC4 (struct strbuf*) ; 
 scalar_t__ FUNC5 (struct ref_transaction*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct ref_transaction*) ; 
 scalar_t__ FUNC7 (struct ref_transaction*,int /*<<< orphan*/ ,struct object_id*,struct object_id*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*) ; 
 int /*<<< orphan*/  the_repository ; 
 char* FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(const char *object_ref,
			       struct object_id *object,
			       const char *replace_ref,
			       struct object_id *repl,
			       int force)
{
	struct object_id prev;
	enum object_type obj_type, repl_type;
	struct strbuf ref = STRBUF_INIT;
	struct ref_transaction *transaction;
	struct strbuf err = STRBUF_INIT;
	int res = 0;

	obj_type = FUNC3(the_repository, object, NULL);
	repl_type = FUNC3(the_repository, repl, NULL);
	if (!force && obj_type != repl_type)
		return FUNC2(FUNC0("Objects must be of the same type.\n"
			       "'%s' points to a replaced object of type '%s'\n"
			       "while '%s' points to a replacement object of "
			       "type '%s'."),
			     object_ref, FUNC9(obj_type),
			     replace_ref, FUNC9(repl_type));

	if (FUNC1(object, &prev, &ref, force)) {
		FUNC8(&ref);
		return -1;
	}

	transaction = FUNC4(&err);
	if (!transaction ||
	    FUNC7(transaction, ref.buf, repl, &prev,
				   0, NULL, &err) ||
	    FUNC5(transaction, &err))
		res = FUNC2("%s", err.buf);

	FUNC6(transaction);
	FUNC8(&ref);
	return res;
}