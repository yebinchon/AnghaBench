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
struct sigevent {int dummy; } ;
struct rusage {scalar_t__ ru_msgsnd; scalar_t__ ru_msgrcv; } ;
struct aio_context {int dummy; } ;
typedef  int /*<<< orphan*/  completion ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PF_UNIX ; 
 int /*<<< orphan*/  RUSAGE_SELF ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  UNIX_SOCKETPAIR_LEN ; 
 int /*<<< orphan*/  FUNC3 (struct aio_context*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct aio_context*,int /*<<< orphan*/ ,struct sigevent*) ; 
 int /*<<< orphan*/  FUNC5 (struct aio_context*,int /*<<< orphan*/ ,struct sigevent*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC7 (int /*<<< orphan*/ ,struct rusage*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(completion comp, struct sigevent *sev)
{
	struct aio_context ac;
	struct rusage ru_before, ru_after;
	int sockets[2];

	FUNC1("aio");

	FUNC2(FUNC8(PF_UNIX, SOCK_STREAM, 0, sockets) != -1,
	    "socketpair failed: %s", FUNC9(errno));

	FUNC3(&ac, sockets[0], sockets[1], UNIX_SOCKETPAIR_LEN);
	FUNC2(FUNC7(RUSAGE_SELF, &ru_before) != -1,
	    "getrusage failed: %s", FUNC9(errno));
	FUNC5(&ac, comp, sev);
	FUNC2(FUNC7(RUSAGE_SELF, &ru_after) != -1,
	    "getrusage failed: %s", FUNC9(errno));
	FUNC0(ru_after.ru_msgsnd == ru_before.ru_msgsnd + 1);
	ru_before = ru_after;
	FUNC4(&ac, comp, sev);
	FUNC2(FUNC7(RUSAGE_SELF, &ru_after) != -1,
	    "getrusage failed: %s", FUNC9(errno));
	FUNC0(ru_after.ru_msgrcv == ru_before.ru_msgrcv + 1);

	FUNC6(sockets[0]);
	FUNC6(sockets[1]);
}