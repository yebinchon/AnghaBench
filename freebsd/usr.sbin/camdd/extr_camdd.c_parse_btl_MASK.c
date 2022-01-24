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
typedef  int /*<<< orphan*/  camdd_argmask ;

/* Variables and functions */
 int /*<<< orphan*/  CAMDD_ARG_BUS ; 
 int /*<<< orphan*/  CAMDD_ARG_LUN ; 
 int /*<<< orphan*/  CAMDD_ARG_TARGET ; 
 scalar_t__ FUNC0 (char) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 int FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(char *tstr, int *bus, int *target, int *lun, camdd_argmask *arglst)
{
	char *tmpstr;
	int convs = 0;

	while (FUNC0(*tstr) && (*tstr != '\0'))
		tstr++;

	tmpstr = (char *)FUNC1(tstr, ":");
	if ((tmpstr != NULL) && (*tmpstr != '\0')) {
		*bus = FUNC2(tmpstr, NULL, 0);
		*arglst |= CAMDD_ARG_BUS;
		convs++;
		tmpstr = (char *)FUNC1(NULL, ":");
		if ((tmpstr != NULL) && (*tmpstr != '\0')) {
			*target = FUNC2(tmpstr, NULL, 0);
			*arglst |= CAMDD_ARG_TARGET;
			convs++;
			tmpstr = (char *)FUNC1(NULL, ":");
			if ((tmpstr != NULL) && (*tmpstr != '\0')) {
				*lun = FUNC2(tmpstr, NULL, 0);
				*arglst |= CAMDD_ARG_LUN;
				convs++;
			}
		}
	}

	return convs;
}