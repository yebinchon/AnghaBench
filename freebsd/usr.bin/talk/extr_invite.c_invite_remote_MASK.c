#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct tsockaddr {int /*<<< orphan*/  sa_family; } ;
struct TYPE_5__ {scalar_t__ tv_usec; int /*<<< orphan*/  tv_sec; } ;
struct itimerval {TYPE_1__ it_value; TYPE_1__ it_interval; } ;
struct TYPE_7__ {void* id_num; struct tsockaddr addr; } ;
struct TYPE_6__ {int /*<<< orphan*/  sin_family; } ;
typedef  int /*<<< orphan*/  CTL_RESPONSE ;

/* Variables and functions */
 int /*<<< orphan*/  DELETE ; 
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  ITIMER_REAL ; 
 int /*<<< orphan*/  RING_WAIT ; 
 int /*<<< orphan*/  SIGALRM ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_3__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* current_state ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  his_machine_addr ; 
 void* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int invitation_waiting ; 
 int /*<<< orphan*/  invitebuf ; 
 scalar_t__ FUNC7 (int,int) ; 
 int local_id ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 TYPE_3__ msg ; 
 TYPE_2__ my_addr ; 
 int /*<<< orphan*/  my_machine_addr ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  re_invite ; 
 int remote_id ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct itimerval*,struct itimerval*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int sockt ; 
 int /*<<< orphan*/  FUNC13 () ; 

void
FUNC14(void)
{
	int new_sockt;
	struct itimerval itimer;
	CTL_RESPONSE response;

	itimer.it_value.tv_sec = RING_WAIT;
	itimer.it_value.tv_usec = 0;
	itimer.it_interval = itimer.it_value;
	if (FUNC7(sockt, 5) != 0)
		FUNC9("Error on attempt to listen for caller");
	/* copy new style sockaddr to old, swap family (short in old) */
	msg.addr = *(struct tsockaddr *)&my_addr;
	msg.addr.sa_family = FUNC6(my_addr.sin_family);
	msg.id_num = FUNC5(-1);		/* an impossible id_num */
	invitation_waiting = 1;
	FUNC1();
	/*
	 * Shut off the automatic messages for a while,
	 * so we can use the interrupt timer to resend the invitation
	 */
	FUNC4();
	FUNC10(ITIMER_REAL, &itimer, (struct itimerval *)0);
	FUNC8("Waiting for your party to respond");
	FUNC12(SIGALRM, re_invite);
	(void) FUNC11(invitebuf);
	while ((new_sockt = FUNC0(sockt, 0, 0)) < 0) {
		if (errno == EINTR)
			continue;
		FUNC9("Unable to connect with your party");
	}
	FUNC2(sockt);
	sockt = new_sockt;

	/*
	 * Have the daemons delete the invitations now that we
	 * have connected.
	 */
	current_state = "Waiting for your party to respond";
	FUNC13();

	msg.id_num = FUNC5(local_id);
	FUNC3(my_machine_addr, msg, DELETE, &response);
	msg.id_num = FUNC5(remote_id);
	FUNC3(his_machine_addr, msg, DELETE, &response);
	invitation_waiting = 0;
}