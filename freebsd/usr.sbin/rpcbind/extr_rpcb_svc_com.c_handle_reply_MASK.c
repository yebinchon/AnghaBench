#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ xdrproc_t ;
typedef  int /*<<< orphan*/  u_int ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct TYPE_4__ {scalar_t__ proc; scalar_t__ where; } ;
struct TYPE_5__ {TYPE_1__ ar_results; int /*<<< orphan*/  ar_verf; } ;
struct rpc_msg {int rm_xid; TYPE_2__ acpted_rply; } ;
struct rpc_err {scalar_t__ re_status; } ;
struct TYPE_6__ {char* args; int arglen; } ;
struct r_rmtcall_args {char* rmt_uaddr; int /*<<< orphan*/  rmt_localvers; TYPE_3__ rmt_args; } ;
struct finfo {char* uaddr; int /*<<< orphan*/  versnum; } ;
typedef  int /*<<< orphan*/  ss ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  XDR ;
typedef  int /*<<< orphan*/  SVCXPRT ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  RPC_BUF_MAX ; 
 scalar_t__ RPC_SUCCESS ; 
 int /*<<< orphan*/  XDR_DECODE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  _null_auth ; 
 int /*<<< orphan*/  FUNC1 (struct rpc_msg*,struct rpc_err*) ; 
 char* FUNC2 (scalar_t__) ; 
 scalar_t__ debugging ; 
 scalar_t__ errno ; 
 struct finfo* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct finfo*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,scalar_t__,char*) ; 
 char* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,struct rpc_msg*) ; 
 scalar_t__ xdr_rmtcall_result ; 
 scalar_t__ xdr_void ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,struct finfo*) ; 

__attribute__((used)) static void
FUNC17(int fd, SVCXPRT *xprt)
{
	XDR		reply_xdrs;
	struct rpc_msg	reply_msg;
	struct rpc_err	reply_error;
	char		*buffer;
	struct finfo	*fi;
	int		inlen, pos, len;
	struct r_rmtcall_args a;
	struct sockaddr_storage ss;
	socklen_t fromlen;
#ifdef SVC_RUN_DEBUG
	char *uaddr;
#endif

	buffer = FUNC7(RPC_BUF_MAX);
	if (buffer == NULL)
		goto done;

	do {
		fromlen = sizeof(ss);
		inlen = FUNC8(fd, buffer, RPC_BUF_MAX, 0,
			    (struct sockaddr *)&ss, &fromlen);
	} while (inlen < 0 && errno == EINTR);
	if (inlen < 0) {
		if (debugging)
			FUNC4(stderr,
	"handle_reply:  recvfrom returned %d, errno %ld\n", inlen, errno);
		goto done;
	}

	reply_msg.acpted_rply.ar_verf = _null_auth;
	reply_msg.acpted_rply.ar_results.where = 0;
	reply_msg.acpted_rply.ar_results.proc = (xdrproc_t) xdr_void;

	FUNC15(&reply_xdrs, buffer, (u_int)inlen, XDR_DECODE);
	if (!FUNC14(&reply_xdrs, &reply_msg)) {
		if (debugging)
			(void) FUNC4(stderr,
				"handle_reply:  xdr_replymsg failed\n");
		goto done;
	}
	fi = FUNC3(reply_msg.rm_xid);
#ifdef	SVC_RUN_DEBUG
	if (debugging) {
		fprintf(stderr, "handle_reply:  reply xid: %d fi addr: %p\n",
			reply_msg.rm_xid, fi);
	}
#endif
	if (fi == NULL) {
		goto done;
	}
	FUNC1(&reply_msg, &reply_error);
	if (reply_error.re_status != RPC_SUCCESS) {
		if (debugging)
			(void) FUNC4(stderr, "handle_reply:  %s\n",
				FUNC2(reply_error.re_status));
		FUNC10(xprt, fi);
		goto done;
	}
	pos = FUNC0(&reply_xdrs);
	len = inlen - pos;
	a.rmt_args.args = &buffer[pos];
	a.rmt_args.arglen = len;
	a.rmt_uaddr = fi->uaddr;
	a.rmt_localvers = fi->versnum;

	FUNC16(xprt, fi);
#ifdef	SVC_RUN_DEBUG
	uaddr =	taddr2uaddr(rpcbind_get_conf("udp"),
				    svc_getrpccaller(xprt));
	if (debugging) {
		fprintf(stderr, "handle_reply:  forwarding address %s to %s\n",
			a.rmt_uaddr, uaddr ? uaddr : "unknown");
	}
	free(uaddr);
#endif
	FUNC12(xprt, (xdrproc_t) xdr_rmtcall_result, (char *) &a);
done:
	FUNC5(buffer);

	if (reply_msg.rm_xid == 0) {
#ifdef	SVC_RUN_DEBUG
	if (debugging) {
		fprintf(stderr, "handle_reply:  NULL xid on exit!\n");
	}
#endif
	} else
		(void) FUNC6(reply_msg.rm_xid);
	return;
}