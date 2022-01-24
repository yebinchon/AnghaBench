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
typedef  scalar_t__ time_t ;
struct TYPE_2__ {scalar_t__ tv_sec; } ;
struct utmpx {TYPE_1__ ut_tv; } ;
struct tm {int dummy; } ;
typedef  int /*<<< orphan*/  ct ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct utmpx*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 char* file ; 
 int /*<<< orphan*/  FUNC4 (struct utmpx*) ; 
 struct utmpx* FUNC5 () ; 
 int /*<<< orphan*/  idlist ; 
 struct tm* FUNC6 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (struct utmpx*,struct utmpx*,int) ; 
 struct utmpx* FUNC8 (struct utmpx*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,struct tm*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (int,char*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 

__attribute__((used)) static void
FUNC18(void)
{
	struct utmpx *buf = NULL;
	struct utmpx *ut;
	static unsigned int amount = 0;
	time_t t;
	char ct[80];
	struct tm *tm;

	FUNC0(&idlist);
	(void)FUNC10(&t);

	FUNC16("last-information");

	/* Load the last entries from the file. */
	while ((ut = FUNC5()) != NULL) {
		if (amount % 128 == 0) {
			buf = FUNC8(buf, (amount + 128) * sizeof *ut);
			if (buf == NULL)
				FUNC15(1, "realloc");
		}
		FUNC7(&buf[amount++], ut, sizeof *ut);
		if (t > ut->ut_tv.tv_sec)
			t = ut->ut_tv.tv_sec;
	}
	FUNC3();

	/* Display them in reverse order. */
	FUNC17("last");
	while (amount > 0)
		FUNC2(&buf[--amount]);
	FUNC13("last");
	FUNC4(buf);
	tm = FUNC6(&t);
	(void) FUNC9(ct, sizeof(ct), "%+", tm);
	FUNC14("\n{:utxdb/%s}", (file == NULL) ? "utx.log" : file);
	FUNC11("seconds", "%lu", (unsigned long) t);
	FUNC14(FUNC1(" begins {:begins/%s}\n"), ct);
	FUNC12("last-information");
}