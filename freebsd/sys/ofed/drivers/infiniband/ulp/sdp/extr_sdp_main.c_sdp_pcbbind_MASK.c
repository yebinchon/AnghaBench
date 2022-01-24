#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ucred {int dummy; } ;
struct TYPE_8__ {scalar_t__ s_addr; } ;
struct sockaddr_in {int sin_len; scalar_t__ sin_port; TYPE_3__ sin_addr; int /*<<< orphan*/  sin_zero; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
struct sdp_sock {scalar_t__ lport; scalar_t__ laddr; TYPE_4__* id; } ;
typedef  int /*<<< orphan*/  null ;
struct TYPE_6__ {int /*<<< orphan*/  src_addr; } ;
struct TYPE_7__ {TYPE_1__ addr; } ;
struct TYPE_9__ {TYPE_2__ route; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IB_QPT_RC ; 
 scalar_t__ INADDR_ANY ; 
 int /*<<< orphan*/  RDMA_PS_SDP ; 
 int /*<<< orphan*/  FUNC0 (struct sdp_sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sdp_sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sdp_sock*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  init_net ; 
 int FUNC4 (TYPE_4__*,struct sockaddr*) ; 
 TYPE_4__* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sdp_sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sdp_cma_handler ; 
 int /*<<< orphan*/  FUNC6 (struct sdp_sock*) ; 

__attribute__((used)) static int
FUNC7(struct sdp_sock *ssk, struct sockaddr *nam, struct ucred *cred)
{
	struct sockaddr_in *sin;
	struct sockaddr_in null;
	int error;

	FUNC1(ssk);

	if (ssk->lport != 0 || ssk->laddr != INADDR_ANY)
		return (EINVAL);
	/* rdma_bind_addr handles bind races.  */
	FUNC2(ssk);
	if (ssk->id == NULL)
		ssk->id = FUNC5(&init_net, sdp_cma_handler, ssk, RDMA_PS_SDP, IB_QPT_RC);
	if (ssk->id == NULL) {
		FUNC0(ssk);
		return (ENOMEM);
	}
	if (nam == NULL) {
		null.sin_family = AF_INET;
		null.sin_len = sizeof(null);
		null.sin_addr.s_addr = INADDR_ANY;
		null.sin_port = 0;
		FUNC3(&null.sin_zero, sizeof(null.sin_zero));
		nam = (struct sockaddr *)&null;
	}
	error = -FUNC4(ssk->id, nam);
	FUNC0(ssk);
	if (error == 0) {
		sin = (struct sockaddr_in *)&ssk->id->route.addr.src_addr;
		ssk->laddr = sin->sin_addr.s_addr;
		ssk->lport = sin->sin_port;
	} else
		FUNC6(ssk);
	return (error);
}