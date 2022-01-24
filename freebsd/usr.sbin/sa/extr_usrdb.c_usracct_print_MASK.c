#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uintmax_t ;
struct userinfo {int ui_calls; int ui_utime; int ui_stime; int ui_io; double ui_mem; int /*<<< orphan*/  ui_uid; } ;
struct TYPE_4__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ DBT ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 char* MAXLOGNAME ; 
 int /*<<< orphan*/  R_FIRST ; 
 int /*<<< orphan*/  R_NEXT ; 
 scalar_t__ dflag ; 
 scalar_t__ kflag ; 
 int /*<<< orphan*/  FUNC1 (struct userinfo*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  usracct_db ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void
FUNC5(void)
{
	DBT key, data;
	struct userinfo uistore, *ui = &uistore;
	double t;
	int rv;

	rv = FUNC0(usracct_db, &key, &data, R_FIRST);
	if (rv < 0)
		FUNC4("retrieving user accounting stats");

	while (rv == 0) {
		FUNC1(ui, data.data, sizeof(struct userinfo));

		FUNC2("%-*s %9ju ", MAXLOGNAME - 1,
		    FUNC3(ui->ui_uid, 0), (uintmax_t)ui->ui_calls);

		t = (ui->ui_utime + ui->ui_stime) / 1000000;
		if (t < 0.000001)		/* kill divide by zero */
			t = 0.000001;

		FUNC2("%12.2f%s ", t / 60.0, "cpu");

		/* ui->ui_calls is always != 0 */
		if (dflag)
			FUNC2("%12.0f%s",
			    ui->ui_io / ui->ui_calls, "avio");
		else
			FUNC2("%12.0f%s", ui->ui_io, "tio");

		/* t is always >= 0.000001; see above. */
		if (kflag)
			FUNC2("%12.0f%s", ui->ui_mem / t, "k");
		else
			FUNC2("%12.0f%s", ui->ui_mem, "k*sec");

		FUNC2("\n");

		rv = FUNC0(usracct_db, &key, &data, R_NEXT);
		if (rv < 0)
			FUNC4("retrieving user accounting stats");
	}
}