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
typedef  int /*<<< orphan*/  u_int32_t ;
struct ypresp_order {int ordernum; int /*<<< orphan*/  master; int /*<<< orphan*/  status; } ;
struct ypresp_master {int ordernum; int /*<<< orphan*/  master; int /*<<< orphan*/  status; } ;
struct ypreq_nokey {char* domain; char* map; } ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int sin_len; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_family; } ;
struct hostent {scalar_t__ h_addr; } ;
typedef  int /*<<< orphan*/  CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int RPC_ANYSOCK ; 
 int RPC_SUCCESS ; 
 int /*<<< orphan*/  YPPROC_MASTER ; 
 int /*<<< orphan*/  YPPROC_ORDER ; 
 int /*<<< orphan*/  YPPROG ; 
 int /*<<< orphan*/  YPVERS ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ypreq_nokey*,int /*<<< orphan*/ ,struct ypresp_order*,struct timeval) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC4 (struct sockaddr_in*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct timeval,int*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,char*) ; 
 struct hostent* FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*,TYPE_1__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ xdr_ypreq_nokey ; 
 scalar_t__ xdr_ypresp_master ; 
 scalar_t__ xdr_ypresp_order ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(char *indomain, char *inmap, char *server, int *outorder,
    char **outname)
{
	struct ypresp_order ypro;
	struct ypresp_master yprm;
	struct ypreq_nokey yprnk;
	struct timeval tv;
	struct sockaddr_in rsrv_sin;
	int rsrv_sock;
	CLIENT *client;
	struct hostent *h;
	int r;

	FUNC0((char *)&rsrv_sin, sizeof rsrv_sin);
	rsrv_sin.sin_len = sizeof rsrv_sin;
	rsrv_sin.sin_family = AF_INET;
	rsrv_sock = RPC_ANYSOCK;

	h = FUNC6(server);
	if (h == NULL) {
		if (FUNC7(server, &rsrv_sin.sin_addr) == 0)
			FUNC5(1, "unknown host %s.", server);
	} else
		rsrv_sin.sin_addr.s_addr = *(u_int32_t *)h->h_addr;

	tv.tv_sec = 10;
	tv.tv_usec = 0;

	client = FUNC4(&rsrv_sin, YPPROG, YPVERS, tv, &rsrv_sock);
	if (client == NULL)
		FUNC5(1, "clntudp_create: no contact with host %s.", server);

	yprnk.domain = indomain;
	yprnk.map = inmap;

	FUNC0((char *)(char *)&ypro, sizeof ypro);

	r = FUNC1(client, YPPROC_ORDER, (xdrproc_t)xdr_ypreq_nokey, &yprnk,
	    (xdrproc_t)xdr_ypresp_order, &ypro, tv);
	if (r != RPC_SUCCESS)
		FUNC3(client, "yp_order: clnt_call");

	*outorder = ypro.ordernum;
	FUNC9((xdrproc_t)xdr_ypresp_order, (char *)&ypro);

	r = FUNC10(ypro.status);
	if (r == RPC_SUCCESS) {
		FUNC0((char *)&yprm, sizeof yprm);

		r = FUNC1(client, YPPROC_MASTER, (xdrproc_t)xdr_ypreq_nokey,
		    &yprnk, (xdrproc_t)xdr_ypresp_master, &yprm, tv);
		if (r != RPC_SUCCESS)
			FUNC3(client, "yp_master: clnt_call");
		r = FUNC10(yprm.status);
		if (r == 0)
			*outname = (char *)FUNC8(yprm.master);
		FUNC9((xdrproc_t)xdr_ypresp_master, (char *)&yprm);
	}
	FUNC2(client);
	return (r);
}