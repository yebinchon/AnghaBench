#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int (* seq ) (TYPE_3__*,TYPE_2__*,TYPE_2__*,int) ;} ;
struct TYPE_10__ {int /*<<< orphan*/  data; } ;
struct TYPE_9__ {int /*<<< orphan*/  dir; } ;
typedef  TYPE_1__ PERSON ;
typedef  TYPE_2__ DBT ;

/* Variables and functions */
 int R_FIRST ; 
 int R_NEXT ; 
 int /*<<< orphan*/  _PATH_FORWARD ; 
 int /*<<< orphan*/  _PATH_PLAN ; 
 int /*<<< orphan*/  _PATH_PROJECT ; 
 int /*<<< orphan*/  _PATH_PUBKEY ; 
 TYPE_3__* db ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  pplan ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (TYPE_3__*,TYPE_2__*,TYPE_2__*,int) ; 

void
FUNC7(void)
{
	PERSON *pn;
	int sflag, r;
	PERSON *tmp;
	DBT data, key;

	for (sflag = R_FIRST;; sflag = R_NEXT) {
		r = (*db->seq)(db, &key, &data, sflag);
		if (r == -1)
			FUNC0(1, "db seq");
		if (r == 1)
			break;
		FUNC2(&tmp, data.data, sizeof tmp);
		pn = tmp;
		if (sflag != R_FIRST)
			FUNC4('\n');
		FUNC1(pn);
		if (!pplan) {
			(void)FUNC5(pn->dir,
			    _PATH_FORWARD, "Mail forwarded to");
			(void)FUNC5(pn->dir, _PATH_PROJECT, "Project");
			if (!FUNC5(pn->dir, _PATH_PLAN, "Plan"))
				(void)FUNC3("No Plan.\n");
			(void)FUNC5(pn->dir,
			    _PATH_PUBKEY, "Public key");
		}
	}
}