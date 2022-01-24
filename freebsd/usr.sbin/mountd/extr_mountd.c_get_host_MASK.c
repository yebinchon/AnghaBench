#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {struct addrinfo* gt_addrinfo; } ;
struct grouplist {scalar_t__ gr_type; TYPE_1__ gr_ptr; struct grouplist* gr_next; } ;
struct addrinfo {char* ai_canonname; struct addrinfo* ai_next; int /*<<< orphan*/  ai_addr; int /*<<< orphan*/  ai_flags; int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_protocol; } ;
typedef  int /*<<< orphan*/  host ;

/* Variables and functions */
 int /*<<< orphan*/  AI_CANONNAME ; 
 scalar_t__ GT_HOST ; 
 scalar_t__ GT_IGNORE ; 
 scalar_t__ GT_NULL ; 
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int NI_MAXHOST ; 
 int /*<<< orphan*/  NI_NUMERICHOST ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC1 (char*,int /*<<< orphan*/ *,struct addrinfo*,struct addrinfo**) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static int
FUNC8(char *cp, struct grouplist *grp, struct grouplist *tgrp)
{
	struct grouplist *checkgrp;
	struct addrinfo *ai, *tai, hints;
	int ecode;
	char host[NI_MAXHOST];

	if (grp->gr_type != GT_NULL) {
		FUNC7(LOG_ERR, "Bad netgroup type for ip host %s", cp);
		return (1);
	}
	FUNC3(&hints, 0, sizeof hints);
	hints.ai_flags = AI_CANONNAME;
	hints.ai_protocol = IPPROTO_UDP;
	ecode = FUNC1(cp, NULL, &hints, &ai);
	if (ecode != 0) {
		FUNC7(LOG_ERR,"can't get address info for host %s", cp);
		return 1;
	}
	grp->gr_ptr.gt_addrinfo = ai;
	while (ai != NULL) {
		if (ai->ai_canonname == NULL) {
			if (FUNC2(ai->ai_addr, ai->ai_addrlen, host,
			    sizeof host, NULL, 0, NI_NUMERICHOST) != 0)
				FUNC6(host, "?", sizeof(host));
			ai->ai_canonname = FUNC5(host);
			ai->ai_flags |= AI_CANONNAME;
		}
		if (debug)
			FUNC0(stderr, "got host %s\n", ai->ai_canonname);
		/*
		 * Sanity check: make sure we don't already have an entry
		 * for this host in the grouplist.
		 */
		for (checkgrp = tgrp; checkgrp != NULL;
		    checkgrp = checkgrp->gr_next) {
			if (checkgrp->gr_type != GT_HOST)
				continue;
			for (tai = checkgrp->gr_ptr.gt_addrinfo; tai != NULL;
			    tai = tai->ai_next) {
				if (FUNC4(tai->ai_addr, ai->ai_addr, NULL) != 0)
					continue;
				if (debug)
					FUNC0(stderr,
					    "ignoring duplicate host %s\n",
					    ai->ai_canonname);
				grp->gr_type = GT_IGNORE;
				return (0);
			}
		}
		ai = ai->ai_next;
	}
	grp->gr_type = GT_HOST;
	return (0);
}