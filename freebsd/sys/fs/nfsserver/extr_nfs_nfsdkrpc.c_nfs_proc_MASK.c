#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  u_int32_t ;
typedef  int /*<<< orphan*/  u_char ;
struct nfsrvcache {int dummy; } ;
struct nfsrv_descript {int nd_flag; scalar_t__ nd_repstat; int /*<<< orphan*/  nd_slotid; int /*<<< orphan*/  nd_sessionid; int /*<<< orphan*/  nd_mreq; TYPE_1__* nd_xprt; int /*<<< orphan*/  nd_sockref; int /*<<< orphan*/  nd_tcpconntime; int /*<<< orphan*/  nd_retxid; int /*<<< orphan*/ * nd_nam2; } ;
struct mbuf {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  xp_sockref; } ;
typedef  TYPE_1__ SVCXPRT ;

/* Variables and functions */
 int /*<<< orphan*/  M_COPYALL ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int ND_HASSEQUENCE ; 
 int ND_NFSV2 ; 
 int ND_NFSV4 ; 
 int ND_NFSV41 ; 
 int ND_SAMETCPCONN ; 
 int ND_SAVEREPLY ; 
 int ND_STREAMSOCK ; 
 int /*<<< orphan*/  NFSD_MONOSEC ; 
 scalar_t__ NFSERR_DONTREPLY ; 
 scalar_t__ NFSERR_REPLYFROMCACHE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct nfsrv_descript*) ; 
 int NFSV4_SMALLSTR ; 
 int RC_DOIT ; 
 int RC_DROPIT ; 
 int RC_REPLY ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct mbuf* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nfsrv_descript*,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,struct mbuf**) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct nfsrv_descript*,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct nfsrv_descript*) ; 
 struct nfsrvcache* FUNC10 (struct nfsrv_descript*) ; 

__attribute__((used)) static int
FUNC11(struct nfsrv_descript *nd, u_int32_t xid, SVCXPRT *xprt,
    struct nfsrvcache **rpp)
{
	int cacherep = RC_DOIT, isdgram, taglen = -1;
	struct mbuf *m;
	u_char tag[NFSV4_SMALLSTR + 1], *tagstr = NULL;
	u_int32_t minorvers = 0;
	uint32_t ack;

	*rpp = NULL;
	if (nd->nd_nam2 == NULL) {
		nd->nd_flag |= ND_STREAMSOCK;
		isdgram = 0;
	} else {
		isdgram = 1;
	}

	/*
	 * Two cases:
	 * 1 - For NFSv2 over UDP, if we are near our malloc/mget
	 *     limit, just drop the request. There is no
	 *     NFSERR_RESOURCE or NFSERR_DELAY for NFSv2 and the
	 *     client will timeout/retry over UDP in a little while.
	 * 2 - nd_repstat == 0 && nd_mreq == NULL, which
	 *     means a normal nfs rpc, so check the cache
	 */
	if ((nd->nd_flag & ND_NFSV2) && nd->nd_nam2 != NULL &&
	    FUNC7()) {
		cacherep = RC_DROPIT;
	} else {
		/*
		 * For NFSv3, play it safe and assume that the client is
		 * doing retries on the same TCP connection.
		 */
		if ((nd->nd_flag & (ND_NFSV4 | ND_STREAMSOCK)) ==
		    ND_STREAMSOCK)
			nd->nd_flag |= ND_SAMETCPCONN;
		nd->nd_retxid = xid;
		nd->nd_tcpconntime = NFSD_MONOSEC;
		nd->nd_sockref = xprt->xp_sockref;
		if ((nd->nd_flag & ND_NFSV4) != 0)
			FUNC4(nd, tag, &tagstr, &taglen,
			    &minorvers);
		if ((nd->nd_flag & ND_NFSV41) != 0)
			/* NFSv4.1 caches replies in the session slots. */
			cacherep = RC_DOIT;
		else {
			cacherep = FUNC9(nd);
			ack = 0;
			FUNC1(xprt, &ack);
			FUNC5(xprt->xp_sockref, ack, 0);
		}
	}

	/*
	 * Handle the request. There are three cases.
	 * RC_DOIT - do the RPC
	 * RC_REPLY - return the reply already created
	 * RC_DROPIT - just throw the request away
	 */
	if (cacherep == RC_DOIT) {
		if ((nd->nd_flag & ND_NFSV41) != 0)
			nd->nd_xprt = xprt;
		FUNC8(nd, isdgram, tagstr, taglen, minorvers);
		if ((nd->nd_flag & ND_NFSV41) != 0) {
			if (nd->nd_repstat != NFSERR_REPLYFROMCACHE &&
			    (nd->nd_flag & ND_SAVEREPLY) != 0) {
				/* Cache a copy of the reply. */
				m = FUNC3(nd->nd_mreq, 0, M_COPYALL,
				    M_WAITOK);
			} else
				m = NULL;
			if ((nd->nd_flag & ND_HASSEQUENCE) != 0)
				FUNC6(nd->nd_sessionid,
				    nd->nd_slotid, nd->nd_repstat, &m);
			if (nd->nd_repstat == NFSERR_REPLYFROMCACHE)
				nd->nd_repstat = 0;
			cacherep = RC_REPLY;
		} else {
			if (nd->nd_repstat == NFSERR_DONTREPLY)
				cacherep = RC_DROPIT;
			else
				cacherep = RC_REPLY;
			*rpp = FUNC10(nd);
		}
	}
	if (tagstr != NULL && taglen > NFSV4_SMALLSTR)
		FUNC2(tagstr, M_TEMP);

	FUNC0(0, nd);
	return (cacherep);
}