#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct timeval {int dummy; } ;
struct sockopt {int* sopt_val; int sopt_valsize; int /*<<< orphan*/  sopt_name; scalar_t__ sopt_level; void* sopt_dir; } ;
struct socket {int so_state; int so_error; int /*<<< orphan*/  so_rcv; TYPE_2__* so_proto; int /*<<< orphan*/  so_timeo; } ;
struct sockaddr {int /*<<< orphan*/  sa_len; } ;
struct TYPE_9__ {scalar_t__ cb_vers; scalar_t__ cb_prog; int /*<<< orphan*/  cb_rpcvers; } ;
struct rpc_msg {TYPE_4__ rm_call; int /*<<< orphan*/  rm_direction; scalar_t__ rm_xid; } ;
struct TYPE_8__ {int tv_sec; int tv_usec; } ;
struct ct_data {char* ct_waitchan; int cl_refs; int /*<<< orphan*/  ct_lock; int /*<<< orphan*/  ct_pending; scalar_t__ ct_record_resid; int /*<<< orphan*/ * ct_record; struct socket* ct_socket; int /*<<< orphan*/  cl_auth; struct ct_data* cl_private; int /*<<< orphan*/ * cl_ops; void* ct_closeit; scalar_t__ ct_waitflag; int /*<<< orphan*/  ct_mpos; int /*<<< orphan*/  ct_mcallc; scalar_t__ ct_xid; int /*<<< orphan*/  ct_addr; TYPE_3__ ct_wait; scalar_t__ ct_upcallrefs; void* ct_closed; void* ct_closing; scalar_t__ ct_threads; } ;
struct __rpc_sockinfo {int /*<<< orphan*/  si_proto; int /*<<< orphan*/  si_af; } ;
typedef  int /*<<< orphan*/  sopt ;
typedef  scalar_t__ rpcvers_t ;
typedef  scalar_t__ rpcprog_t ;
typedef  int /*<<< orphan*/  one ;
typedef  int /*<<< orphan*/  XDR ;
struct TYPE_6__ {int re_errno; } ;
struct TYPE_10__ {TYPE_1__ cf_error; int /*<<< orphan*/  cf_stat; } ;
struct TYPE_7__ {int pr_flags; scalar_t__ pr_protocol; } ;
typedef  struct ct_data CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  CALL ; 
 int EINTR ; 
 int ERESTART ; 
 void* FALSE ; 
 scalar_t__ IPPROTO_TCP ; 
 int /*<<< orphan*/  MCALL_MSG_SIZE ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int PCATCH ; 
 int PR_CONNREQUIRED ; 
 int PSOCK ; 
 int /*<<< orphan*/  RPC_MSG_VERSION ; 
 int /*<<< orphan*/  RPC_SYSTEMERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct socket*) ; 
 int /*<<< orphan*/  FUNC3 (struct socket*) ; 
 int /*<<< orphan*/  FUNC4 (struct socket*) ; 
 scalar_t__ SOL_SOCKET ; 
 void* SOPT_SET ; 
 int /*<<< orphan*/  SO_KEEPALIVE ; 
 int /*<<< orphan*/  SO_RCV ; 
 int SS_ISCONFIRMING ; 
 int SS_ISCONNECTED ; 
 int SS_ISCONNECTING ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TCP_NODELAY ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  XDR_ENCODE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct timeval*) ; 
 size_t FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct socket*,struct __rpc_sockinfo*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct sockopt*,int) ; 
 int /*<<< orphan*/  clnt_vc_ops ; 
 int /*<<< orphan*/  clnt_vc_soupcall ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC13 (struct timeval*) ; 
 scalar_t__ FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (struct ct_data*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_5__ rpc_createerr ; 
 int /*<<< orphan*/  FUNC20 (struct socket*) ; 
 int FUNC21 (struct socket*,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int FUNC22 (struct socket*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC23 (struct socket*,struct sockopt*) ; 
 int /*<<< orphan*/  FUNC24 (struct socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ct_data*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,struct rpc_msg*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

CLIENT *
FUNC27(
	struct socket *so,		/* open file descriptor */
	struct sockaddr *raddr,		/* servers address */
	const rpcprog_t prog,		/* program number */
	const rpcvers_t vers,		/* version number */
	size_t sendsz,			/* buffer recv size */
	size_t recvsz,			/* buffer send size */
	int intrflag)			/* interruptible */
{
	CLIENT *cl;			/* client handle */
	struct ct_data *ct = NULL;	/* client handle */
	struct timeval now;
	struct rpc_msg call_msg;
	static uint32_t disrupt;
	struct __rpc_sockinfo si;
	XDR xdrs;
	int error, interrupted, one = 1, sleep_flag;
	struct sockopt sopt;

	if (disrupt == 0)
		disrupt = (uint32_t)(long)raddr;

	cl = (CLIENT *)FUNC14(sizeof (*cl));
	ct = (struct ct_data *)FUNC14(sizeof (*ct));

	FUNC19(&ct->ct_lock, "ct->ct_lock", NULL, MTX_DEF);
	ct->ct_threads = 0;
	ct->ct_closing = FALSE;
	ct->ct_closed = FALSE;
	ct->ct_upcallrefs = 0;

	if ((so->so_state & (SS_ISCONNECTED|SS_ISCONFIRMING)) == 0) {
		error = FUNC21(so, raddr, curthread);
		FUNC2(so);
		interrupted = 0;
		sleep_flag = PSOCK;
		if (intrflag != 0)
			sleep_flag |= PCATCH;
		while ((so->so_state & SS_ISCONNECTING)
		    && so->so_error == 0) {
			error = FUNC17(&so->so_timeo, FUNC3(so),
			    sleep_flag, "connec", 0);
			if (error) {
				if (error == EINTR || error == ERESTART)
					interrupted = 1;
				break;
			}
		}
		if (error == 0) {
			error = so->so_error;
			so->so_error = 0;
		}
		FUNC4(so);
		if (error) {
			if (!interrupted)
				so->so_state &= ~SS_ISCONNECTING;
			rpc_createerr.cf_stat = RPC_SYSTEMERROR;
			rpc_createerr.cf_error.re_errno = error;
			goto err;
		}
	}

	if (!FUNC10(so, &si)) {
		goto err;
	}

	if (so->so_proto->pr_flags & PR_CONNREQUIRED) {
		FUNC12(&sopt, sizeof(sopt));
		sopt.sopt_dir = SOPT_SET;
		sopt.sopt_level = SOL_SOCKET;
		sopt.sopt_name = SO_KEEPALIVE;
		sopt.sopt_val = &one;
		sopt.sopt_valsize = sizeof(one);
		FUNC23(so, &sopt);
	}

	if (so->so_proto->pr_protocol == IPPROTO_TCP) {
		FUNC12(&sopt, sizeof(sopt));
		sopt.sopt_dir = SOPT_SET;
		sopt.sopt_level = IPPROTO_TCP;
		sopt.sopt_name = TCP_NODELAY;
		sopt.sopt_val = &one;
		sopt.sopt_valsize = sizeof(one);
		FUNC23(so, &sopt);
	}

	ct->ct_closeit = FALSE;

	/*
	 * Set up private data struct
	 */
	ct->ct_socket = so;
	ct->ct_wait.tv_sec = -1;
	ct->ct_wait.tv_usec = -1;
	FUNC16(&ct->ct_addr, raddr, raddr->sa_len);

	/*
	 * Initialize call message
	 */
	FUNC13(&now);
	ct->ct_xid = ((uint32_t)++disrupt) ^ FUNC8(&now);
	call_msg.rm_xid = ct->ct_xid;
	call_msg.rm_direction = CALL;
	call_msg.rm_call.cb_rpcvers = RPC_MSG_VERSION;
	call_msg.rm_call.cb_prog = (uint32_t)prog;
	call_msg.rm_call.cb_vers = (uint32_t)vers;

	/*
	 * pre-serialize the static part of the call msg and stash it away
	 */
	FUNC26(&xdrs, ct->ct_mcallc, MCALL_MSG_SIZE,
	    XDR_ENCODE);
	if (! FUNC25(&xdrs, &call_msg)) {
		if (ct->ct_closeit) {
			FUNC20(ct->ct_socket);
		}
		goto err;
	}
	ct->ct_mpos = FUNC7(&xdrs);
	FUNC6(&xdrs);
	ct->ct_waitchan = "rpcrecv";
	ct->ct_waitflag = 0;

	/*
	 * Create a client handle which uses xdrrec for serialization
	 * and authnone for authentication.
	 */
	sendsz = FUNC9(si.si_af, si.si_proto, (int)sendsz);
	recvsz = FUNC9(si.si_af, si.si_proto, (int)recvsz);
	error = FUNC22(ct->ct_socket, sendsz, recvsz);
	if (error != 0) {
		if (ct->ct_closeit) {
			FUNC20(ct->ct_socket);
		}
		goto err;
	}
	cl->cl_refs = 1;
	cl->cl_ops = &clnt_vc_ops;
	cl->cl_private = ct;
	cl->cl_auth = FUNC11();

	FUNC0(&ct->ct_socket->so_rcv);
	FUNC24(ct->ct_socket, SO_RCV, clnt_vc_soupcall, ct);
	FUNC1(&ct->ct_socket->so_rcv);

	ct->ct_record = NULL;
	ct->ct_record_resid = 0;
	FUNC5(&ct->ct_pending);
	return (cl);

err:
	FUNC18(&ct->ct_lock);
	FUNC15(ct, sizeof (struct ct_data));
	FUNC15(cl, sizeof (CLIENT));

	return ((CLIENT *)NULL);
}