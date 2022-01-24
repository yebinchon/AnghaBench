#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ypstat ;
typedef  int /*<<< orphan*/  type ;
struct svc_req {int /*<<< orphan*/  rq_vers; TYPE_1__* rq_xprt; } ;
struct circleq_dnsentry {int prot_type; scalar_t__ id; int /*<<< orphan*/  name; int /*<<< orphan*/  type; int /*<<< orphan*/  domain; TYPE_1__* xprt; int /*<<< orphan*/  client_addr; int /*<<< orphan*/  xid; int /*<<< orphan*/  ypvers; int /*<<< orphan*/  ttl; } ;
typedef  int socklen_t ;
struct TYPE_4__ {int /*<<< orphan*/  dnsrch; } ;
struct TYPE_3__ {int /*<<< orphan*/  xp_raddr; int /*<<< orphan*/  xp_fd; } ;

/* Variables and functions */
 int AF_INET ; 
 int /*<<< orphan*/  BY_RPC_XID ; 
 int /*<<< orphan*/  DEF_TTL ; 
 int SOCK_DGRAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct circleq_dnsentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  T_A ; 
 int /*<<< orphan*/  T_AAAA ; 
 int /*<<< orphan*/  YP_TRUE ; 
 int /*<<< orphan*/  YP_YPERR ; 
 TYPE_2__ _res ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (struct circleq_dnsentry*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  links ; 
 int /*<<< orphan*/  pending ; 
 int /*<<< orphan*/  qhead ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct circleq_dnsentry* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ FUNC10 (char*,int /*<<< orphan*/ ) ; 

ypstat
FUNC11(struct svc_req *rqstp, char *name, int af)
{
	register struct circleq_dnsentry *q;
	socklen_t len;
	int type;

	/* Check for SOCK_DGRAM or SOCK_STREAM -- we need to know later */
	type = -1;
	len = sizeof(type);
	if (FUNC2(rqstp->rq_xprt->xp_fd, SOL_SOCKET,
					SO_TYPE, &type, &len) == -1) {
		FUNC6("getsockopt failed: %s", FUNC4(errno));
		return(YP_YPERR);
	}

	/* Avoid transmitting dupe requests. */
	if (type == SOCK_DGRAM &&
	    FUNC7(FUNC5(rqstp->rq_xprt),BY_RPC_XID) != NULL)
		return(YP_TRUE);

	if ((q = FUNC8()) == NULL)
		return(YP_YPERR);

	q->type = (af == AF_INET) ? T_A : T_AAAA;
	q->ttl = DEF_TTL;
	q->xprt = rqstp->rq_xprt;
	q->ypvers = rqstp->rq_vers;
	q->prot_type = type;
	if (q->prot_type == SOCK_DGRAM)
		q->xid = FUNC5(q->xprt);
	q->client_addr = q->xprt->xp_raddr;
	q->domain = _res.dnsrch;
	q->id = FUNC10(name, q->type);

	if (q->id == 0) {
		FUNC6("DNS query failed");
		FUNC1(q);
		return(YP_YPERR);
	}

	q->name = FUNC3(name);
	FUNC0(&qhead, q, links);
	pending++;

	if (debug)
		FUNC6("queueing async DNS name lookup (%lu)", q->id);

	FUNC9();
	return(YP_TRUE);
}