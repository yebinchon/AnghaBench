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
struct printer {double price100; int /*<<< orphan*/ * acct_file; } ;

/* Variables and functions */
#define  PCAPERR_NOTFOUND 130 
#define  PCAPERR_OSERR 129 
#define  PCAPERR_TCLOOP 128 
 int /*<<< orphan*/ * acctfile ; 
 scalar_t__ FUNC0 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct printer*,char*,char*) ; 
 int FUNC4 (char const*,struct printer*) ; 
 int /*<<< orphan*/  FUNC5 (struct printer*) ; 
 char* FUNC6 (int) ; 
 int /*<<< orphan*/  pflag ; 
 double price ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 char* sumfile ; 

__attribute__((used)) static int
FUNC11(const char *ptrname)
{
	int stat;
	struct printer myprinter, *pp = &myprinter;

	FUNC5(&myprinter);
	stat = FUNC4(ptrname, pp);
	switch(stat) {
	case PCAPERR_OSERR:
		FUNC7("pac: getprintcap: %s\n", FUNC6(stat));
		FUNC2(3);
	case PCAPERR_NOTFOUND:
		return 0;
	case PCAPERR_TCLOOP:
		FUNC3(pp, "%s", FUNC6(stat));
	}
	if ((acctfile = pp->acct_file) == NULL)
		FUNC1(3, "accounting not enabled for printer %s", ptrname);
	if (!pflag && pp->price100)
		price = pp->price100/10000.0;
	sumfile = (char *) FUNC0(sizeof(char), FUNC10(acctfile)+5);
	if (sumfile == NULL)
		FUNC1(1, "calloc failed");
	FUNC9(sumfile, acctfile);
	FUNC8(sumfile, "_sum");
	return(1);
}