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
typedef  int /*<<< orphan*/  ypstat ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int u_char ;
typedef  int /*<<< orphan*/  type ;
struct svc_req {int /*<<< orphan*/  rq_vers; TYPE_1__* rq_xprt; } ;
struct in_addr {int dummy; } ;
struct circleq_dnsentry {int prot_type; char* id; int addrlen; int addrtype; int /*<<< orphan*/  name; int /*<<< orphan*/  addr; int /*<<< orphan*/  type; TYPE_1__* xprt; int /*<<< orphan*/  client_addr; int /*<<< orphan*/  xid; int /*<<< orphan*/ * domain; int /*<<< orphan*/  ypvers; int /*<<< orphan*/  ttl; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {int /*<<< orphan*/  xp_raddr; int /*<<< orphan*/  xp_fd; } ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int /*<<< orphan*/  BY_RPC_XID ; 
 int /*<<< orphan*/  DEF_TTL ; 
 int IN6ADDRSZ ; 
 int INADDRSZ ; 
 int MAXHOSTNAMELEN ; 
 int SOCK_DGRAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct circleq_dnsentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  T_PTR ; 
 int /*<<< orphan*/  YP_NOKEY ; 
 int /*<<< orphan*/  YP_TRUE ; 
 int /*<<< orphan*/  YP_YPERR ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (struct circleq_dnsentry*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 int FUNC3 (char*,struct in_addr*) ; 
 int FUNC4 (int,char*,int*) ; 
 int /*<<< orphan*/  links ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  pending ; 
 int /*<<< orphan*/  qhead ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct circleq_dnsentry* FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 char* FUNC16 (char*,int /*<<< orphan*/ ) ; 

ypstat
FUNC17(struct svc_req *rqstp, char *addr, int af)
{
	register struct circleq_dnsentry *q;
	char buf[MAXHOSTNAMELEN], *qp;
	uint32_t abuf[4];	/* IPv4 or IPv6 */
	u_char *uaddr = (u_char *)abuf;
	socklen_t len;
	int type, n;

	/* Check for SOCK_DGRAM or SOCK_STREAM -- we need to know later */
	type = -1;
	len = sizeof(type);
	if (FUNC2(rqstp->rq_xprt->xp_fd, SOL_SOCKET,
					SO_TYPE, &type, &len) == -1) {
		FUNC12("getsockopt failed: %s", FUNC9(errno));
		return(YP_YPERR);
	}

	/* Avoid transmitting dupe requests. */
	if (type == SOCK_DGRAM &&
	    FUNC13(FUNC11(rqstp->rq_xprt),BY_RPC_XID) != NULL)
		return(YP_TRUE);

	switch (af) {
	case AF_INET:
		if (FUNC3(addr, (struct in_addr *)uaddr) != 1)
			return(YP_NOKEY);
		FUNC6(buf, sizeof(buf), "%u.%u.%u.%u.in-addr.arpa",
		    (uaddr[3] & 0xff), (uaddr[2] & 0xff),
		    (uaddr[1] & 0xff), (uaddr[0] & 0xff));
		len = INADDRSZ;
		break;
	case AF_INET6:
		if (FUNC4(af, addr, uaddr) != 1)
			return(YP_NOKEY);
		qp = buf;
		for (n = IN6ADDRSZ - 1; n >= 0; n--) {
			qp += (size_t)FUNC7(qp, "%x.%x.", uaddr[n] & 0xf,
			    (uaddr[n] >> 4) & 0xf);
		}
		FUNC10(buf, "ip6.arpa", sizeof(buf));
		len = IN6ADDRSZ;
		break;
	default:
		return(YP_YPERR);
	}

	if ((q = FUNC14()) == NULL)
		return(YP_YPERR);

	if (debug)
		FUNC12("DNS address is: %s", buf);

	q->type = T_PTR;
	q->ttl = DEF_TTL;
	q->xprt = rqstp->rq_xprt;
	q->ypvers = rqstp->rq_vers;
	q->domain = NULL;
	q->prot_type = type;
	if (q->prot_type == SOCK_DGRAM)
		q->xid = FUNC11(q->xprt);
	q->client_addr = q->xprt->xp_raddr;
	q->id = FUNC16(buf, q->type);

	if (q->id == 0) {
		FUNC12("DNS query failed");
		FUNC1(q);
		return(YP_YPERR);
	}

	FUNC5(q->addr, uaddr, len);
	q->addrlen = len;
	q->addrtype = af;
	q->name = FUNC8(buf);
	FUNC0(&qhead, q, links);
	pending++;

	if (debug)
		FUNC12("queueing async DNS address lookup (%lu)", q->id);

	FUNC15();
	return(YP_TRUE);
}