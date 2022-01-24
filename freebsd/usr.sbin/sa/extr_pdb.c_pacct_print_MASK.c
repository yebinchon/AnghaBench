#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct cmdinfo {int ci_calls; int ci_flags; int /*<<< orphan*/  compare; int /*<<< orphan*/  ci_comm; } ;
struct TYPE_6__ {int size; struct cmdinfo* data; } ;
typedef  TYPE_1__ DBT ;
typedef  int /*<<< orphan*/  DB ;
typedef  struct cmdinfo BTREEINFO ;

/* Variables and functions */
 int CI_UNPRINTABLE ; 
 int /*<<< orphan*/  DB_BTREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  R_FIRST ; 
 int /*<<< orphan*/  R_LAST ; 
 int /*<<< orphan*/  R_NEXT ; 
 int /*<<< orphan*/  R_PREV ; 
 int /*<<< orphan*/  FUNC3 (struct cmdinfo*,struct cmdinfo*) ; 
 int /*<<< orphan*/  aflag ; 
 int /*<<< orphan*/  FUNC4 (struct cmdinfo*,struct cmdinfo*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct cmdinfo*,int) ; 
 scalar_t__ FUNC6 (struct cmdinfo*) ; 
 int cutoff ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cmdinfo*) ; 
 scalar_t__ fflag ; 
 int /*<<< orphan*/ * pacct_db ; 
 int /*<<< orphan*/  FUNC8 (struct cmdinfo*,struct cmdinfo*) ; 
 scalar_t__ rflag ; 
 int /*<<< orphan*/  sa_cmp ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ vflag ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

void
FUNC11(void)
{
	BTREEINFO bti;
	DBT key, data, ndata;
	DB *output_pacct_db;
	struct cmdinfo *cip, ci, ci_total, ci_other, ci_junk;
	int rv;

	FUNC5(&ci_total, sizeof ci_total);
	FUNC9(ci_total.ci_comm, "");
	FUNC5(&ci_other, sizeof ci_other);
	FUNC9(ci_other.ci_comm, "***other");
	FUNC5(&ci_junk, sizeof ci_junk);
	FUNC9(ci_junk.ci_comm, "**junk**");

	/*
	 * Retrieve them into new DB, sorted by appropriate key.
	 * At the same time, cull 'other' and 'junk'
	 */
	FUNC5(&bti, sizeof bti);
	bti.compare = sa_cmp;
	output_pacct_db = FUNC7(NULL, O_RDWR, 0, DB_BTREE, &bti);
	if (output_pacct_db == NULL) {
		FUNC10("couldn't sort process accounting stats");
		return;
	}

	ndata.data = NULL;
	ndata.size = 0;
	rv = FUNC2(pacct_db, &key, &data, R_FIRST);
	if (rv < 0)
		FUNC10("retrieving process accounting stats");
	while (rv == 0) {
		cip = (struct cmdinfo *) data.data;
		FUNC4(cip, &ci, sizeof ci);

		/* add to total */
		FUNC3(&ci, &ci_total);

		if (vflag && ci.ci_calls <= cutoff &&
		    (fflag || FUNC6(&ci))) {
			/* put it into **junk** */
			FUNC3(&ci, &ci_junk);
			goto next;
		}
		if (!aflag &&
		    ((ci.ci_flags & CI_UNPRINTABLE) != 0 || ci.ci_calls <= 1)) {
			/* put into ***other */
			FUNC3(&ci, &ci_other);
			goto next;
		}
		rv = FUNC1(output_pacct_db, &data, &ndata, 0);
		if (rv < 0)
			FUNC10("sorting process accounting stats");

next:		rv = FUNC2(pacct_db, &key, &data, R_NEXT);
		if (rv < 0)
			FUNC10("retrieving process accounting stats");
	}

	/* insert **junk** and ***other */
	if (ci_junk.ci_calls != 0) {
		data.data = &ci_junk;
		data.size = sizeof ci_junk;
		rv = FUNC1(output_pacct_db, &data, &ndata, 0);
		if (rv < 0)
			FUNC10("sorting process accounting stats");
	}
	if (ci_other.ci_calls != 0) {
		data.data = &ci_other;
		data.size = sizeof ci_other;
		rv = FUNC1(output_pacct_db, &data, &ndata, 0);
		if (rv < 0)
			FUNC10("sorting process accounting stats");
	}

	/* print out the total */
	FUNC8(&ci_total, &ci_total);

	/* print out; if reversed, print first (smallest) first */
	rv = FUNC2(output_pacct_db, &data, &ndata, rflag ? R_FIRST : R_LAST);
	if (rv < 0)
		FUNC10("retrieving process accounting report");
	while (rv == 0) {
		cip = (struct cmdinfo *) data.data;
		FUNC4(cip, &ci, sizeof ci);

		FUNC8(&ci, &ci_total);

		rv = FUNC2(output_pacct_db, &data, &ndata,
		    rflag ? R_NEXT : R_PREV);
		if (rv < 0)
			FUNC10("retrieving process accounting report");
	}
	FUNC0(output_pacct_db);
}