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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* DEFLP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  acctfile ; 
 scalar_t__ allflag ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int errs ; 
 int /*<<< orphan*/  euid ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int mflag ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int pflag ; 
 int /*<<< orphan*/  price ; 
 int /*<<< orphan*/  FUNC12 (char*,char const*) ; 
 int /*<<< orphan*/  reverse ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  sort ; 
 int /*<<< orphan*/  sumfile ; 
 scalar_t__ summarize ; 
 int /*<<< orphan*/  uid ; 
 int /*<<< orphan*/  FUNC14 () ; 

int
FUNC15(int argc, char **argv)
{
	FILE *acctf;
	const char *cp, *printer;

	printer = NULL;
	euid = FUNC9();	/* these aren't used in pac(1) */
	uid = FUNC10();
	while (--argc) {
		cp = *++argv;
		if (*cp++ == '-') {
			switch(*cp++) {
			case 'P':
				/*
				 * Printer name.
				 */
				printer = cp;
				continue;

			case 'p':
				/*
				 * get the price.
				 */
				price = FUNC1(cp);
				pflag = 1;
				continue;

			case 's':
				/*
				 * Summarize and compress accounting file.
				 */
				summarize++;
				continue;

			case 'c':
				/*
				 * Sort by cost.
				 */
				sort++;
				continue;

			case 'm':
				/*
				 * disregard machine names for each user
				 */
				mflag = 1;
				continue;

			case 'r':
				/*
				 * Reverse sorting order.
				 */
				reverse++;
				continue;

			default:
				FUNC14();
			}
		}
		(void) FUNC4(--cp);
		allflag = 0;
	}
	if (printer == NULL && (printer = FUNC8("PRINTER")) == NULL)
		printer = DEFLP;
	if (!FUNC2(printer)) {
		FUNC12("pac: unknown printer %s\n", printer);
		FUNC5(2);
	}

	if ((acctf = FUNC7(acctfile, "r")) == NULL) {
		FUNC11(acctfile);
		FUNC5(1);
	}
	FUNC0(acctf);
	FUNC6(acctf);
	if ((acctf = FUNC7(sumfile, "r")) != NULL) {
		FUNC0(acctf);
		FUNC6(acctf);
	}
	if (summarize)
		FUNC13();
	else
		FUNC3();
	FUNC5(errs);
}