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
typedef  scalar_t__ u_short ;
typedef  int /*<<< orphan*/  u_long ;
typedef  int /*<<< orphan*/  u_int32_t ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int sin_len; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_family; } ;
struct hostent {scalar_t__ h_addr; } ;
typedef  int /*<<< orphan*/  CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int RPC_ANYSOCK ; 
 int /*<<< orphan*/ * FUNC0 (struct sockaddr_in*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (struct sockaddr_in*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct timeval,int*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char*) ; 
 struct hostent* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct sockaddr_in*,int /*<<< orphan*/ ,int) ; 

CLIENT *
FUNC7(char *server, u_long program, u_long version, u_short port,
    int usetcp)
{
	struct sockaddr_in rsrv_sin;
	static CLIENT *client;
	struct hostent *h;
	struct timeval tv;
	int rsrv_sock;

	FUNC6(&rsrv_sin, 0, sizeof rsrv_sin);
	rsrv_sin.sin_len = sizeof rsrv_sin;
	rsrv_sin.sin_family = AF_INET;
	rsrv_sock = RPC_ANYSOCK;
	if (port != 0)
		rsrv_sin.sin_port = FUNC4(port);

	if (*server >= '0' && *server <= '9') {
		if (FUNC5(server, &rsrv_sin.sin_addr) == 0) {
			FUNC2(1, "inet_aton: invalid address %s.",
			    server);
		}
	} else {
		h = FUNC3(server);
		if (h == NULL) {
			FUNC2(1, "gethostbyname: unknown host %s.",
			    server);
		}
		rsrv_sin.sin_addr.s_addr = *(u_int32_t *)h->h_addr;
	}

	tv.tv_sec = 10;
	tv.tv_usec = 0;

	if (usetcp)
		client = FUNC0(&rsrv_sin, program, version,
		    &rsrv_sock, 0, 0);
	else
		client = FUNC1(&rsrv_sin, program, version, tv,
		    &rsrv_sock);

	if (client == NULL) {
		FUNC2(1, "clntudp_create: no contact with host %s.",
		    server);
	}

	return (client);
}