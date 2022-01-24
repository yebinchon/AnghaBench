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
struct printer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
#define  PCAPERR_NOTFOUND 130 
#define  PCAPERR_OSERR 129 
#define  PCAPERR_TCLOOP 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct printer*,char*) ; 
 int FUNC2 (char const*,struct printer*) ; 
 int /*<<< orphan*/  FUNC3 (struct printer*) ; 
 int /*<<< orphan*/  FUNC4 (struct printer*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 

void
FUNC6(const char *printer)
{
	struct printer myprinter, *pp = &myprinter;
	int status;

	FUNC3(pp);
	status = FUNC2(printer, pp);
	switch(status) {
	case PCAPERR_OSERR:
		FUNC5(LOG_ERR, "can't open printer description file: %m");
		FUNC0(1);
	case PCAPERR_NOTFOUND:
		FUNC5(LOG_ERR, "unknown printer: %s", printer);
		FUNC0(1);
	case PCAPERR_TCLOOP:
		FUNC1(pp, "potential reference loop detected in printcap file");
	default:
		break;
	}
	FUNC4(pp);
}