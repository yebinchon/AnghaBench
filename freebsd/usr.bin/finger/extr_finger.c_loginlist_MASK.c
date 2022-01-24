#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct utmpx {scalar_t__ ut_type; int /*<<< orphan*/  ut_user; } ;
struct passwd {int dummy; } ;
struct TYPE_7__ {int (* seq ) (TYPE_2__*,TYPE_1__*,TYPE_1__*,int) ;} ;
struct TYPE_6__ {int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  PERSON ;
typedef  TYPE_1__ DBT ;

/* Variables and functions */
 int R_FIRST ; 
 int R_NEXT ; 
 scalar_t__ USER_PROCESS ; 
 TYPE_2__* db ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (struct passwd*) ; 
 int /*<<< orphan*/  FUNC3 (struct utmpx*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 struct passwd* FUNC7 (int /*<<< orphan*/ ) ; 
 struct utmpx* FUNC8 () ; 
 scalar_t__ FUNC9 (struct passwd*) ; 
 scalar_t__ kflag ; 
 scalar_t__ lflag ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int FUNC12 (TYPE_2__*,TYPE_1__*,TYPE_1__*,int) ; 

__attribute__((used)) static void
FUNC13(void)
{
	PERSON *pn;
	DBT data, key;
	struct passwd *pw;
	struct utmpx *user;
	int r, sflag1;

	if (kflag)
		FUNC5(1, "can't list logins without reading utmp");

	FUNC11();
	while ((user = FUNC8()) != NULL) {
		if (user->ut_type != USER_PROCESS)
			continue;
		if ((pn = FUNC6(user->ut_user)) == NULL) {
			if ((pw = FUNC7(user->ut_user)) == NULL)
				continue;
			if (FUNC9(pw))
				continue;
			pn = FUNC2(pw);
		}
		FUNC3(user, pn);
	}
	FUNC0();
	if (db && lflag)
		for (sflag1 = R_FIRST;; sflag1 = R_NEXT) {
			PERSON *tmp;

			r = (*db->seq)(db, &key, &data, sflag1);
			if (r == -1)
				FUNC4(1, "db seq");
			if (r == 1)
				break;
			FUNC10(&tmp, data.data, sizeof tmp);
			FUNC1(tmp);
		}
}