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
struct sockaddr {int /*<<< orphan*/  sa_len; } ;
struct portal {TYPE_1__* p_portal_group; } ;
struct connection {scalar_t__ conn_session_type; } ;
struct conf {scalar_t__ conf_maxproc; int /*<<< orphan*/  conf_timeout; int /*<<< orphan*/  conf_pidfh; } ;
typedef  scalar_t__ pid_t ;
typedef  int /*<<< orphan*/  host ;
struct TYPE_2__ {int /*<<< orphan*/  pg_name; struct conf* pg_conf; } ;

/* Variables and functions */
 scalar_t__ CONN_SESSION_TYPE_DISCOVERY ; 
 scalar_t__ CONN_SESSION_TYPE_NORMAL ; 
 int /*<<< orphan*/  NI_MAXHOST ; 
 int /*<<< orphan*/  NI_NUMERICHOST ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct connection* FUNC2 (struct portal*,int,char*,struct sockaddr const*) ; 
 int /*<<< orphan*/  FUNC3 (struct connection*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (struct sockaddr const*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct connection*) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int,char*) ; 
 int /*<<< orphan*/  FUNC12 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (struct connection*) ; 
 scalar_t__ nchildren ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*) ; 
 scalar_t__ FUNC18 (int) ; 

__attribute__((used)) static void
FUNC19(struct portal *portal, int fd,
    const struct sockaddr *client_sa, bool dont_fork)
{
	struct connection *conn;
	int error;
	pid_t pid;
	char host[NI_MAXHOST + 1];
	struct conf *conf;

	conf = portal->p_portal_group->pg_conf;

	if (dont_fork) {
		FUNC10("incoming connection; not forking due to -d flag");
	} else {
		nchildren -= FUNC18(false);
		FUNC0(nchildren >= 0);

		while (conf->conf_maxproc > 0 && nchildren >= conf->conf_maxproc) {
			FUNC10("maxproc limit of %d child processes hit; "
			    "waiting for child process to exit", conf->conf_maxproc);
			nchildren -= FUNC18(true);
			FUNC0(nchildren >= 0);
		}
		FUNC10("incoming connection; forking child process #%d",
		    nchildren);
		nchildren++;
		pid = FUNC5();
		if (pid < 0)
			FUNC11(1, "fork");
		if (pid > 0) {
			FUNC1(fd);
			return;
		}
	}
	FUNC15(conf->conf_pidfh);

	error = FUNC7(client_sa, client_sa->sa_len,
	    host, sizeof(host), NULL, 0, NI_NUMERICHOST);
	if (error != 0)
		FUNC12(1, "getnameinfo: %s", FUNC6(error));

	FUNC10("accepted connection from %s; portal group \"%s\"",
	    host, portal->p_portal_group->pg_name);
	FUNC13(host);
	FUNC17("%s", host);

	conn = FUNC2(portal, fd, host, client_sa);
	FUNC16(conf->conf_timeout, true);
	FUNC8();
	FUNC14(conn);
	if (conn->conn_session_type == CONN_SESSION_TYPE_NORMAL) {
		FUNC9(conn);
		FUNC10("connection handed off to the kernel");
	} else {
		FUNC0(conn->conn_session_type == CONN_SESSION_TYPE_DISCOVERY);
		FUNC3(conn);
	}
	FUNC10("nothing more to do; exiting");
	FUNC4(0);
}