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
struct kevent {int dummy; } ;
struct dcons_state {int /*<<< orphan*/  to; int /*<<< orphan*/  kq; int /*<<< orphan*/  zero; int /*<<< orphan*/  traw; int /*<<< orphan*/  tsave; struct dcons_port* port; } ;
struct dcons_port {int port; int sport; int infd; int outfd; int s; struct addrinfo* res; } ;
struct addrinfo {int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_addr; scalar_t__ ai_protocol; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; int /*<<< orphan*/  ai_flags; } ;
typedef  int /*<<< orphan*/  service ;
typedef  int /*<<< orphan*/  on ;
typedef  int /*<<< orphan*/  hints ;

/* Variables and functions */
 int /*<<< orphan*/  AI_PASSIVE ; 
 int /*<<< orphan*/  EVFILT_READ ; 
 int EV_ADD ; 
 int EV_ONESHOT ; 
 int /*<<< orphan*/  FUNC0 (struct kevent*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,void*) ; 
 int /*<<< orphan*/  NOTE_LOWAT ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  PF_UNSPEC ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_REUSEADDR ; 
 int STDIN_FILENO ; 
 int STDOUT_FILENO ; 
 int /*<<< orphan*/  TCSADRAIN ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (char*,char*,struct addrinfo*,struct addrinfo**) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct kevent*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char*,int) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int tc_set ; 
 scalar_t__ FUNC14 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ verbose ; 

__attribute__((used)) static void
FUNC16(struct dcons_state *dc, int port, char *host, int sport)
{
	struct addrinfo hints, *res;
	int on = 1, error;
	char service[10];
	struct kevent kev;
	struct dcons_port *p;

	p = &dc->port[port];
	p->port = port;
	p->sport = sport;
	p->infd = p->outfd = -1;

	if (sport < 0)
		return;

	if (sport == 0) {

		/* Use stdin and stdout */
		p->infd = STDIN_FILENO;
		p->outfd = STDOUT_FILENO;
		p->s = -1;
		if (tc_set == 0 &&
		    FUNC14(STDIN_FILENO, &dc->tsave) == 0) {
			dc->traw = dc->tsave;
			FUNC2(&dc->traw);
			FUNC15(STDIN_FILENO, TCSADRAIN, &dc->traw);
			tc_set = 1;
		}
		FUNC0(&kev, p->infd, EVFILT_READ, EV_ADD, NOTE_LOWAT, 1,
		    (void *)p);
		FUNC7(dc->kq, &kev, 1, NULL, 0, &dc->zero);
		return;
	}

	FUNC9(&hints, 0, sizeof(hints));
	hints.ai_flags = AI_PASSIVE;
#if 1	/* gdb can talk v4 only */
	hints.ai_family = PF_INET;
#else
	hints.ai_family = PF_UNSPEC;
#endif
	hints.ai_socktype = SOCK_STREAM;
	hints.ai_protocol = 0;

	if (verbose)
		FUNC10("%s:%d for port %d\n",
			host == NULL ? "*" : host, sport, port);
	FUNC12(service, sizeof(service), "%d", sport);
	error = FUNC6(host, service,  &hints, &res);
	if (error)
		FUNC4(1, "tcp/%s: %s\n", service, FUNC5(error));
	p->res = res;
	p->s = FUNC13(res->ai_family, res->ai_socktype, res->ai_protocol);
	if (p->s < 0)
		FUNC3(1, "socket");
	FUNC11(p->s, SOL_SOCKET, SO_REUSEADDR, &on, sizeof(on));

	if (FUNC1(p->s, p->res->ai_addr, p->res->ai_addrlen) < 0) {
		FUNC3(1, "bind");
	}
	if (FUNC8(p->s, 1) < 0)
		FUNC3(1, "listen");
	FUNC0(&kev, p->s, EVFILT_READ, EV_ADD | EV_ONESHOT, 0, 0, (void *)p);
	error = FUNC7(dc->kq, &kev, 1, NULL, 0, &dc->to);
	if (error < 0)
		FUNC3(1, "kevent");
	return;
}