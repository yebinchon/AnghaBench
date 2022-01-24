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
struct timespec {int /*<<< orphan*/  sun_path; int /*<<< orphan*/  sun_family; } ;
struct sockaddr_un {int /*<<< orphan*/  sun_path; int /*<<< orphan*/  sun_family; } ;
struct sockaddr {int dummy; } ;
struct runtime_env {int queue; int /*<<< orphan*/  sockfd; } ;
struct kevent {int dummy; } ;
struct configuration {int force_unlink; int /*<<< orphan*/  socket_mode; int /*<<< orphan*/  socket_path; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVFILT_READ ; 
 int EV_ADD ; 
 int EV_ONESHOT ; 
 int /*<<< orphan*/  FUNC0 (struct kevent*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  F_SETFL ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,...) ; 
 int /*<<< orphan*/  O_NONBLOCK ; 
 int /*<<< orphan*/  PF_LOCAL ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC3 (struct runtime_env* (*) (struct configuration*)) ; 
 int /*<<< orphan*/  FUNC4 (struct runtime_env* (*) (struct configuration*)) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct sockaddr*,int) ; 
 struct runtime_env* FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct runtime_env*) ; 
 int /*<<< orphan*/  FUNC12 (int,struct kevent*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct timespec*) ; 
 int FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct timespec*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct runtime_env *
FUNC20(struct configuration *config)
{
	int serv_addr_len;
	struct sockaddr_un serv_addr;

	struct kevent eventlist;
	struct timespec timeout;

	struct runtime_env *retval;

	FUNC3(init_runtime_env);
	retval = FUNC7(1, sizeof(*retval));
	FUNC5(retval != NULL);

	retval->sockfd = FUNC16(PF_LOCAL, SOCK_STREAM, 0);

	if (config->force_unlink == 1)
		FUNC19(config->socket_path);

	FUNC15(&serv_addr, 0, sizeof(struct sockaddr_un));
	serv_addr.sun_family = PF_LOCAL;
	FUNC17(serv_addr.sun_path, config->socket_path,
		sizeof(serv_addr.sun_path));
	serv_addr_len = sizeof(serv_addr.sun_family) +
		FUNC18(serv_addr.sun_path) + 1;

	if (FUNC6(retval->sockfd, (struct sockaddr *)&serv_addr,
		serv_addr_len) == -1) {
		FUNC9(retval->sockfd);
		FUNC11(retval);

		FUNC1("runtime environment", "can't bind socket to path: "
			"%s", config->socket_path);
		FUNC4(init_runtime_env);
		return (NULL);
	}
	FUNC2("runtime environment", "using socket %s",
		config->socket_path);

	/*
	 * Here we're marking socket as non-blocking and setting its backlog
	 * to the maximum value
	 */
	FUNC8(config->socket_path, config->socket_mode);
	FUNC14(retval->sockfd, -1);
	FUNC10(retval->sockfd, F_SETFL, O_NONBLOCK);

	retval->queue = FUNC13();
	FUNC5(retval->queue != -1);

	FUNC0(&eventlist, retval->sockfd, EVFILT_READ, EV_ADD | EV_ONESHOT,
		0, 0, 0);
	FUNC15(&timeout, 0, sizeof(struct timespec));
	FUNC12(retval->queue, &eventlist, 1, NULL, 0, &timeout);

	FUNC2("runtime environment", "successfully initialized");
	FUNC4(init_runtime_env);
	return (retval);
}