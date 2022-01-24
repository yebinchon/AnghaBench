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
struct TYPE_6__ {int /*<<< orphan*/  cb_vers; int /*<<< orphan*/  cb_prog; int /*<<< orphan*/  cb_rpcvers; } ;
struct rpc_msg {int rm_direction; TYPE_1__ rm_call; int /*<<< orphan*/  rm_xid; } ;
typedef  int /*<<< orphan*/  enum_t ;
typedef  enum msg_type { ____Placeholder_msg_type } msg_type ;
typedef  scalar_t__ bool_t ;
struct TYPE_7__ {scalar_t__ x_op; } ;
typedef  TYPE_2__ XDR ;

/* Variables and functions */
 int CALL ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  RPC_MSG_VERSION ; 
 scalar_t__ XDR_ENCODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 

bool_t
FUNC3(XDR *xdrs, struct rpc_msg *cmsg)
{
	enum msg_type *prm_direction;

	FUNC0(xdrs != NULL);
	FUNC0(cmsg != NULL);

	prm_direction = &cmsg->rm_direction;

	cmsg->rm_direction = CALL;
	cmsg->rm_call.cb_rpcvers = RPC_MSG_VERSION;
	if (
	    (xdrs->x_op == XDR_ENCODE) &&
	    FUNC2(xdrs, &(cmsg->rm_xid)) &&
	    FUNC1(xdrs, (enum_t *) prm_direction) &&
	    FUNC2(xdrs, &(cmsg->rm_call.cb_rpcvers)) &&
	    FUNC2(xdrs, &(cmsg->rm_call.cb_prog)) )
		return (FUNC2(xdrs, &(cmsg->rm_call.cb_vers)));
	return (FALSE);
}