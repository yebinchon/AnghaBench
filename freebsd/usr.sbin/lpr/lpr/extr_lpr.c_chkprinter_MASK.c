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
#define  PCAPERR_NOTFOUND 131 
#define  PCAPERR_OSERR 130 
#define  PCAPERR_TCLOOP 129 
#define  PCAPERR_TCOPEN 128 
 int /*<<< orphan*/  FUNC0 (int,char*,char const*,...) ; 
 int FUNC1 (char const*,struct printer*) ; 
 int /*<<< orphan*/  FUNC2 (struct printer*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 

__attribute__((used)) static void
FUNC5(const char *ptrname, struct printer *pp)
{
	int status;

	FUNC2(pp);
	status = FUNC1(ptrname, pp);
	switch(status) {
	case PCAPERR_OSERR:
	case PCAPERR_TCLOOP:
		FUNC0(1, "%s: %s", ptrname, FUNC3(status));
	case PCAPERR_NOTFOUND:
		FUNC0(1, "%s: unknown printer", ptrname);
	case PCAPERR_TCOPEN:
		FUNC4("%s: unresolved tc= reference(s)", ptrname);
	}
}