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
typedef  int /*<<< orphan*/  xdrproc_t ;
typedef  int /*<<< orphan*/  utmpidlearr ;
typedef  int /*<<< orphan*/  up ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct hostent {int /*<<< orphan*/  h_addr; } ;
typedef  int /*<<< orphan*/  CLIENT ;

/* Variables and functions */
 scalar_t__ RPC_SUCCESS ; 
 int /*<<< orphan*/  RUSERSPROC_NAMES ; 
 int /*<<< orphan*/  RUSERSPROG ; 
 int /*<<< orphan*/  RUSERSVERS_IDLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct timeval) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (char*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,char*) ; 
 struct hostent* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct sockaddr_in*) ; 
 scalar_t__ xdr_utmpidlearr ; 
 scalar_t__ xdr_void ; 

__attribute__((used)) static void
FUNC10(char *host)
{
	utmpidlearr up;
	CLIENT *rusers_clnt;
	struct sockaddr_in addr;
	struct hostent *hp;
	struct timeval tv;

	hp = FUNC6(host);
	if (hp == NULL)
		FUNC5(1, "unknown host \"%s\"", host);

	rusers_clnt = FUNC1(host, RUSERSPROG, RUSERSVERS_IDLE, "udp");
	if (rusers_clnt == NULL)
		FUNC5(1, "%s", FUNC3(""));

	FUNC8(&up, 0, sizeof(up));
	tv.tv_sec = 15;	/* XXX ?? */
	tv.tv_usec = 0;
	if (FUNC0(rusers_clnt, RUSERSPROC_NAMES, (xdrproc_t)xdr_void, NULL,
	    (xdrproc_t)xdr_utmpidlearr, &up, tv) != RPC_SUCCESS)
		FUNC5(1, "%s", FUNC4(rusers_clnt, ""));
	FUNC7(&addr.sin_addr.s_addr, hp->h_addr, sizeof(addr.sin_addr.s_addr));
	FUNC9(&up, &addr);
	FUNC2(rusers_clnt);
}