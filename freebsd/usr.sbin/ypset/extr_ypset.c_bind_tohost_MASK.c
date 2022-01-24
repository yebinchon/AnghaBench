#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xdrproc_t ;
struct TYPE_6__ {int /*<<< orphan*/  ypbind_binding_port; int /*<<< orphan*/  ypbind_binding_addr; } ;
struct ypbind_setdom {char* ypsetdom_domain; int /*<<< orphan*/  ypsetdom_vers; TYPE_1__ ypsetdom_binding; } ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct sockaddr_in {int dummy; } ;
struct in_addr {int s_addr; } ;
struct hostent {int /*<<< orphan*/  h_addr; } ;
struct TYPE_7__ {int /*<<< orphan*/  cl_auth; } ;
typedef  TYPE_2__ CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int RPC_ANYSOCK ; 
 int /*<<< orphan*/  YPBINDPROC_SETDOM ; 
 int /*<<< orphan*/  YPBINDPROG ; 
 int /*<<< orphan*/  YPBINDVERS ; 
 int YPERR_YPBIND ; 
 int /*<<< orphan*/  YPPROC_NULL ; 
 int /*<<< orphan*/  YPPROG ; 
 int /*<<< orphan*/  YPVERS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ypbind_setdom*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct timeval) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 TYPE_2__* FUNC5 (struct sockaddr_in*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct timeval,int*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,char*) ; 
 struct hostent* FUNC7 (char*) ; 
 int FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int) ; 
 scalar_t__ FUNC10 (char*,struct in_addr*) ; 
 int /*<<< orphan*/  FUNC11 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct ypbind_setdom*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,...) ; 
 scalar_t__ xdr_void ; 
 scalar_t__ xdr_ypbind_setdom ; 
 int /*<<< orphan*/  FUNC14 (int) ; 

__attribute__((used)) static int
FUNC15(struct sockaddr_in *sin, char *dom, char *server)
{
	struct ypbind_setdom ypsd;
	struct in_addr iaddr;
	struct hostent *hp;
	struct timeval tv;
	CLIENT *client;
	int sock, port, r;

	port = FUNC8(server, YPPROG, YPPROC_NULL, IPPROTO_UDP);
	if (port == 0)
		FUNC6(1, "%s not running ypserv", server);
	port = FUNC9(port);

	FUNC12(&ypsd, 0, sizeof ypsd);

	if (FUNC10(server, &iaddr) == 0) {
		hp = FUNC7(server);
		if (hp == NULL)
			FUNC6(1, "can't find address for %s", server);
		FUNC11(&iaddr.s_addr, hp->h_addr, sizeof(iaddr.s_addr));
	}
	ypsd.ypsetdom_domain = dom;
	FUNC1(&iaddr.s_addr, &ypsd.ypsetdom_binding.ypbind_binding_addr,
	    sizeof(ypsd.ypsetdom_binding.ypbind_binding_addr));
	FUNC1(&port, &ypsd.ypsetdom_binding.ypbind_binding_port,
	    sizeof(ypsd.ypsetdom_binding.ypbind_binding_port));
	ypsd.ypsetdom_vers = YPVERS;

	tv.tv_sec = 15;
	tv.tv_usec = 0;
	sock = RPC_ANYSOCK;
	client = FUNC5(sin, YPBINDPROG, YPBINDVERS, tv, &sock);
	if (client == NULL) {
		FUNC13("can't yp_bind, reason: %s", FUNC14(YPERR_YPBIND));
		return (YPERR_YPBIND);
	}
	client->cl_auth = FUNC0();

	r = FUNC2(client, YPBINDPROC_SETDOM,
		(xdrproc_t)xdr_ypbind_setdom, &ypsd,
		(xdrproc_t)xdr_void, NULL, tv);
	if (r) {
		FUNC13("cannot ypset for domain %s on host %s: %s"
                " - make sure ypbind was started with -ypset or -ypsetme", dom,
		    server, FUNC4(r));
		FUNC3(client);
		return (YPERR_YPBIND);
	}
	FUNC3(client);
	return (0);
}