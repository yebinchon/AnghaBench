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
typedef  int /*<<< orphan*/  u_long ;
struct componentname {int cn_flags; char* cn_pnbuf; } ;
struct nameidata {struct componentname ni_cnd; } ;

/* Variables and functions */
 int HASBUF ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int NOMACCHECK ; 
 int /*<<< orphan*/  namei_zone ; 
 char* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC1(struct nameidata *ndp, char **bufpp, u_long **hashpp)
{
	struct componentname *cnp = &ndp->ni_cnd;

	cnp->cn_flags |= (NOMACCHECK | HASBUF);
	cnp->cn_pnbuf = FUNC0(namei_zone, M_WAITOK);
	if (hashpp != NULL)
		*hashpp = NULL;
	*bufpp = cnp->cn_pnbuf;
}