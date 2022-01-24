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
typedef  int /*<<< orphan*/  uid_t ;
struct timespec {int dummy; } ;
struct runtime_env {int /*<<< orphan*/  queue; } ;
struct TYPE_2__ {int tv_sec; } ;
struct query_state {int kevent_watermark; TYPE_1__ timeout; } ;
struct kevent {int /*<<< orphan*/  ident; } ;
struct configuration {int dummy; } ;
typedef  int /*<<< orphan*/  gid_t ;

/* Variables and functions */
 int /*<<< orphan*/  EVFILT_READ ; 
 int /*<<< orphan*/  EVFILT_TIMER ; 
 int EV_ADD ; 
 int EV_ONESHOT ; 
 int /*<<< orphan*/  FUNC0 (struct kevent*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,struct query_state*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,...) ; 
 int /*<<< orphan*/  NOTE_LOWAT ; 
 int /*<<< orphan*/  FUNC2 (void (*) (struct kevent*,struct runtime_env*,struct configuration*)) ; 
 int /*<<< orphan*/  FUNC3 (void (*) (struct kevent*,struct runtime_env*,struct configuration*)) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct query_state* FUNC6 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct kevent*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct timespec*) ; 
 int /*<<< orphan*/  FUNC8 (struct timespec*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC9(struct kevent *event_data, struct runtime_env *env,
	struct configuration *config)
{
	struct kevent	eventlist[2];
	struct timespec	timeout;
	struct query_state	*qstate;

	int	fd;
	int	res;

	uid_t	euid;
	gid_t	egid;

	FUNC2(accept_connection);
	fd = FUNC4(event_data->ident, NULL, NULL);
	if (fd == -1) {
		FUNC1("accept_connection", "error %d during accept()",
		    errno);
		FUNC3(accept_connection);
		return;
	}

	if (FUNC5(fd, &euid, &egid) != 0) {
		FUNC1("accept_connection", "error %d during getpeereid()",
			errno);
		FUNC3(accept_connection);
		return;
	}

	qstate = FUNC6(fd, sizeof(int), euid, egid);
	if (qstate == NULL) {
		FUNC1("accept_connection", "can't init query_state");
		FUNC3(accept_connection);
		return;
	}

	FUNC8(&timeout, 0, sizeof(struct timespec));
	FUNC0(&eventlist[0], fd, EVFILT_TIMER, EV_ADD | EV_ONESHOT,
		0, qstate->timeout.tv_sec * 1000, qstate);
	FUNC0(&eventlist[1], fd, EVFILT_READ, EV_ADD | EV_ONESHOT,
		NOTE_LOWAT, qstate->kevent_watermark, qstate);
	res = FUNC7(env->queue, eventlist, 2, NULL, 0, &timeout);
	if (res < 0)
		FUNC1("accept_connection", "kevent error");

	FUNC3(accept_connection);
}