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
struct chash_cfg {int mask4; int mask6; } ;

/* Variables and functions */
 int EINVAL ; 
 char* FUNC0 (char*,char) ; 
 scalar_t__ FUNC1 (char*,char*,int) ; 
 int FUNC2 (char*,char**,int) ; 

__attribute__((used)) static int
FUNC3(struct chash_cfg *cfg, char *data)
{
	char *pdel, *pend, *s;
	int mask4, mask6;

	mask4 = cfg->mask4;
	mask6 = cfg->mask6;

	if (data == NULL)
		return (0);
	if ((pdel = FUNC0(data, ' ')) == NULL)
		return (0);
	while (*pdel == ' ')
		pdel++;
	if (FUNC1(pdel, "masks=", 6) != 0)
		return (EINVAL);
	if ((s = FUNC0(pdel, ' ')) != NULL)
		*s++ = '\0';

	pdel += 6;
	/* Need /XX[,/YY] */
	if (*pdel++ != '/')
		return (EINVAL);
	mask4 = FUNC2(pdel, &pend, 10);
	if (*pend == ',') {
		/* ,/YY */
		pdel = pend + 1;
		if (*pdel++ != '/')
			return (EINVAL);
		mask6 = FUNC2(pdel, &pend, 10);
		if (*pend != '\0')
			return (EINVAL);
	} else if (*pend != '\0')
		return (EINVAL);

	if (mask4 < 0 || mask4 > 32 || mask6 < 0 || mask6 > 128)
		return (EINVAL);

	cfg->mask4 = mask4;
	cfg->mask6 = mask6;

	return (0);
}