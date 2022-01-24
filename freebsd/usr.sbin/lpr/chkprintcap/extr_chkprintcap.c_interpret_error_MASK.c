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
struct printer {int /*<<< orphan*/  printer; } ;

/* Variables and functions */
#define  PCAPERR_OSERR 131 
#define  PCAPERR_SUCCESS 130 
#define  PCAPERR_TCLOOP 129 
#define  PCAPERR_TCOPEN 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  problems ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(const struct printer *pp, int error)
{
	switch(error) {
	case PCAPERR_OSERR:
		FUNC0(++problems, "reading printer database");
	case PCAPERR_TCLOOP:
		++problems;
		FUNC2("%s: loop detected in tc= expansion", pp->printer);
		return 1;
	case PCAPERR_TCOPEN:
		FUNC2("%s: unresolved tc= expansion", pp->printer);
		return 1;
	case PCAPERR_SUCCESS:
		break;
	default:
		FUNC1(++problems, "unknown printcap library error %d", error);
	}
	return 0;
}