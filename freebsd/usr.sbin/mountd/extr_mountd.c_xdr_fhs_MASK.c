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
typedef  int u_long ;
struct fhreturn {int fhr_vers; int fhr_numsecflavors; int* fhr_secflavors; int /*<<< orphan*/  fhr_fh; } ;
typedef  scalar_t__ caddr_t ;
typedef  int /*<<< orphan*/  XDR ;

/* Variables and functions */
 int AUTH_SYS ; 
 int NFSX_V2FH ; 
 int NFSX_V3FH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int*) ; 
 int FUNC2 (int /*<<< orphan*/ *,scalar_t__,int) ; 

__attribute__((used)) static int
FUNC3(XDR *xdrsp, caddr_t cp)
{
	struct fhreturn *fhrp = (struct fhreturn *)cp;
	u_long ok = 0, len, auth;
	int i;

	if (!FUNC1(xdrsp, &ok))
		return (0);
	switch (fhrp->fhr_vers) {
	case 1:
		return (FUNC2(xdrsp, (caddr_t)&fhrp->fhr_fh, NFSX_V2FH));
	case 3:
		len = NFSX_V3FH;
		if (!FUNC1(xdrsp, &len))
			return (0);
		if (!FUNC2(xdrsp, (caddr_t)&fhrp->fhr_fh, len))
			return (0);
		if (fhrp->fhr_numsecflavors) {
			if (!FUNC0(xdrsp, &fhrp->fhr_numsecflavors))
				return (0);
			for (i = 0; i < fhrp->fhr_numsecflavors; i++)
				if (!FUNC0(xdrsp, &fhrp->fhr_secflavors[i]))
					return (0);
			return (1);
		} else {
			auth = AUTH_SYS;
			len = 1;
			if (!FUNC1(xdrsp, &len))
				return (0);
			return (FUNC1(xdrsp, &auth));
		}
	}
	return (0);
}