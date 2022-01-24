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
struct exportlist {size_t ex_numsecflavors; int* ex_secflavors; } ;

/* Variables and functions */
 int AUTH_SYS ; 
 int /*<<< orphan*/  LOG_ERR ; 
 size_t MAXSECFLAVORS ; 
 int RPCSEC_GSS_KRB5 ; 
 int RPCSEC_GSS_KRB5I ; 
 int RPCSEC_GSS_KRB5P ; 
 char* FUNC0 (char*,char) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static int
FUNC3(char *seclist, struct exportlist *ep)
{
	char *cp, savedc;
	int flavor;

	ep->ex_numsecflavors = 0;
	for (;;) {
		cp = FUNC0(seclist, ':');
		if (cp) {
			savedc = *cp;
			*cp = '\0';
		}

		if (!FUNC1(seclist, "sys"))
			flavor = AUTH_SYS;
		else if (!FUNC1(seclist, "krb5"))
			flavor = RPCSEC_GSS_KRB5;
		else if (!FUNC1(seclist, "krb5i"))
			flavor = RPCSEC_GSS_KRB5I;
		else if (!FUNC1(seclist, "krb5p"))
			flavor = RPCSEC_GSS_KRB5P;
		else {
			if (cp)
				*cp = savedc;
			FUNC2(LOG_ERR, "bad sec flavor: %s", seclist);
			return (1);
		}
		if (ep->ex_numsecflavors == MAXSECFLAVORS) {
			if (cp)
				*cp = savedc;
			FUNC2(LOG_ERR, "too many sec flavors: %s", seclist);
			return (1);
		}
		ep->ex_secflavors[ep->ex_numsecflavors] = flavor;
		ep->ex_numsecflavors++;
		if (cp) {
			*cp = savedc;
			seclist = cp + 1;
		} else {
			break;
		}
	}
	return (0);
}