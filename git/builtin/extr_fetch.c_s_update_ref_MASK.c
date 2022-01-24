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
struct ref {int /*<<< orphan*/  old_oid; int /*<<< orphan*/  new_oid; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {char* buf; } ;

/* Variables and functions */
 int STORE_REF_ERROR_DF_CONFLICT ; 
 int STORE_REF_ERROR_OTHER ; 
 struct strbuf STRBUF_INIT ; 
 int TRANSACTION_NAME_CONFLICT ; 
 TYPE_1__ default_rla ; 
 scalar_t__ dry_run ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 struct ref_transaction* FUNC3 (struct strbuf*) ; 
 int FUNC4 (struct ref_transaction*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct ref_transaction*) ; 
 scalar_t__ FUNC6 (struct ref_transaction*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*) ; 
 char* FUNC8 (char*,char*,char const*) ; 

__attribute__((used)) static int FUNC9(const char *action,
			struct ref *ref,
			int check_old)
{
	char *msg;
	char *rla = FUNC2("GIT_REFLOG_ACTION");
	struct ref_transaction *transaction;
	struct strbuf err = STRBUF_INIT;
	int ret, df_conflict = 0;

	if (dry_run)
		return 0;
	if (!rla)
		rla = default_rla.buf;
	msg = FUNC8("%s: %s", rla, action);

	transaction = FUNC3(&err);
	if (!transaction ||
	    FUNC6(transaction, ref->name,
				   &ref->new_oid,
				   check_old ? &ref->old_oid : NULL,
				   0, msg, &err))
		goto fail;

	ret = FUNC4(transaction, &err);
	if (ret) {
		df_conflict = (ret == TRANSACTION_NAME_CONFLICT);
		goto fail;
	}

	FUNC5(transaction);
	FUNC7(&err);
	FUNC1(msg);
	return 0;
fail:
	FUNC5(transaction);
	FUNC0("%s", err.buf);
	FUNC7(&err);
	FUNC1(msg);
	return df_conflict ? STORE_REF_ERROR_DF_CONFLICT
			   : STORE_REF_ERROR_OTHER;
}