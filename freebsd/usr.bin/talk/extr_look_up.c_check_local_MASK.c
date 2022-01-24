#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct tsockaddr {int /*<<< orphan*/  sa_family; } ;
struct sockaddr {scalar_t__ sa_family; int sa_len; } ;
typedef  int /*<<< orphan*/  addr ;
struct TYPE_11__ {int /*<<< orphan*/  sin_family; } ;
struct TYPE_10__ {struct tsockaddr ctl_addr; } ;
struct TYPE_8__ {scalar_t__ sa_family; } ;
struct TYPE_9__ {TYPE_1__ addr; } ;
typedef  TYPE_2__ CTL_RESPONSE ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int /*<<< orphan*/  DELETE ; 
 scalar_t__ ECONNREFUSED ; 
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct sockaddr*,int) ; 
 TYPE_7__ ctl_addr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_3__,int /*<<< orphan*/ ,TYPE_2__*) ; 
 char* current_state ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  his_machine_addr ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct sockaddr*,scalar_t__*,int) ; 
 TYPE_3__ msg ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  sockt ; 

int
FUNC8(void)
{
	CTL_RESPONSE response;
	CTL_RESPONSE *rp = &response;
	struct sockaddr addr;

	/* the rest of msg was set up in get_names */
	/* copy new style sockaddr to old, swap family (short in old) */
	msg.ctl_addr = *(struct tsockaddr *)&ctl_addr;
	msg.ctl_addr.sa_family = FUNC3(ctl_addr.sin_family);
	/* must be initiating a talk */
	if (!FUNC4(rp))
		return (0);
	/*
	 * There was an invitation waiting for us,
	 * so connect with the other (hopefully waiting) party
	 */
	current_state = "Waiting to connect with caller";
	do {
		if (rp->addr.sa_family != AF_INET)
			FUNC7("Response uses invalid network address");
		(void)FUNC5(&addr, &rp->addr.sa_family, sizeof(addr));
		addr.sa_family = rp->addr.sa_family;
		addr.sa_len = sizeof(addr);
		errno = 0;
		if (FUNC1(sockt, &addr, sizeof(addr)) != -1)
			return (1);
	} while (errno == EINTR);
	if (errno == ECONNREFUSED) {
		/*
		 * The caller gave up, but his invitation somehow
		 * was not cleared. Clear it and initiate an
		 * invitation. (We know there are no newer invitations,
		 * the talkd works LIFO.)
		 */
		FUNC2(his_machine_addr, msg, DELETE, rp);
		FUNC0(sockt);
		FUNC6();
		return (0);
	}
	FUNC7("Unable to connect with initiator");
	/*NOTREACHED*/
	return (0);
}