#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct xucred {int cr_uid; int* cr_groups; int cr_ngroups; } ;
typedef  int /*<<< orphan*/  hostbuf ;
typedef  int /*<<< orphan*/  bool_t ;
struct TYPE_7__ {scalar_t__ x_op; } ;
typedef  TYPE_1__ XDR ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int MAXHOSTNAMELEN ; 
 int NGRPS ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ XDR_DECODE ; 
 scalar_t__ XDR_ENCODE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int ngroups_max ; 
 int FUNC2 (char*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int*) ; 

bool_t
FUNC7(XDR *xdrs, uint32_t *time, struct xucred *cred)
{
	uint32_t namelen;
	uint32_t ngroups, i;
	uint32_t junk;
	char hostbuf[MAXHOSTNAMELEN];

	if (xdrs->x_op == XDR_ENCODE) {
		/*
		 * Restrict name length to 255 according to RFC 1057.
		 */
		FUNC1(NULL, hostbuf, sizeof(hostbuf));
		namelen = FUNC2(hostbuf);
		if (namelen > 255)
			namelen = 255;
	} else {
		namelen = 0;
	}
	junk = 0;

	if (!FUNC6(xdrs, time)
	    || !FUNC6(xdrs, &namelen))
		return (FALSE);

	/*
	 * Ignore the hostname on decode.
	 */
	if (xdrs->x_op == XDR_ENCODE) {
		if (!FUNC4(xdrs, hostbuf, namelen))
			return (FALSE);
	} else {
		FUNC5(xdrs, FUNC3(xdrs) + FUNC0(namelen));
	}

	if (!FUNC6(xdrs, &cred->cr_uid))
		return (FALSE);
	if (!FUNC6(xdrs, &cred->cr_groups[0]))
		return (FALSE);

	if (xdrs->x_op == XDR_ENCODE) {
		ngroups = cred->cr_ngroups - 1;
		if (ngroups > NGRPS)
			ngroups = NGRPS;
	}

	if (!FUNC6(xdrs, &ngroups))
		return (FALSE);
	for (i = 0; i < ngroups; i++) {
		if (i + 1 < ngroups_max + 1) {
			if (!FUNC6(xdrs, &cred->cr_groups[i + 1]))
				return (FALSE);
		} else {
			if (!FUNC6(xdrs, &junk))
				return (FALSE);
		}
	}

	if (xdrs->x_op == XDR_DECODE) {
		if (ngroups + 1 > ngroups_max + 1)
			cred->cr_ngroups = ngroups_max + 1;
		else
			cred->cr_ngroups = ngroups + 1;
	}

	return (TRUE);
}