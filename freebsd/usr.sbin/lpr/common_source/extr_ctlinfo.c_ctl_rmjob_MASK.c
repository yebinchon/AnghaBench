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
struct cjobinfo {int dummy; } ;
typedef  int /*<<< orphan*/  errm ;

/* Variables and functions */
 int CTI_LINEMAX ; 
 int /*<<< orphan*/  FUNC0 (struct cjobinfo*) ; 
 char* FUNC1 (struct cjobinfo*) ; 
 struct cjobinfo* FUNC2 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct cjobinfo*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char const*) ; 
 char* FUNC5 (char*) ; 

char *
FUNC6(const char *ptrname, const char *cfname)
{
	struct cjobinfo	*cjinf;
	char *lbuff;
	char errm[CTI_LINEMAX];

	cjinf = FUNC2(ptrname, cfname);
	if (cjinf == NULL) {
		FUNC4(errm, sizeof(errm),
		    "ctl_renametf error cti_readcf(%s)", cfname);
		return FUNC5(errm);
	}

	FUNC3(cjinf);
	lbuff = FUNC1(cjinf);
	while (lbuff != NULL) {
		/* obviously we need to fill in the following... */
		switch (lbuff[0]) {
		case 'S':
			break;
		case 'U':
			break;
		default:
			break;
		}
		lbuff = FUNC1(cjinf);
	}

	FUNC0(cjinf);
	cjinf = NULL;

	return NULL;
}