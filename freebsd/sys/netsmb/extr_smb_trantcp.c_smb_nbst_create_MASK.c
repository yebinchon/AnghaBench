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
struct thread {int dummy; } ;
struct smb_vc {struct nbpcb* vc_tdata; } ;
struct TYPE_2__ {int tv_sec; } ;
struct nbpcb {int /*<<< orphan*/  nbp_rcvbuf; int /*<<< orphan*/  nbp_sndbuf; struct smb_vc* nbp_vc; int /*<<< orphan*/  nbp_state; TYPE_1__ nbp_timo; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_NBDATA ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  NBST_CLOSED ; 
 int /*<<< orphan*/  FUNC0 (struct nbpcb*,int) ; 
 struct nbpcb* FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  smb_tcprcvbuf ; 
 int /*<<< orphan*/  smb_tcpsndbuf ; 

__attribute__((used)) static int
FUNC2(struct smb_vc *vcp, struct thread *td)
{
	struct nbpcb *nbp;

	nbp = FUNC1(sizeof *nbp, M_NBDATA, M_WAITOK);
	FUNC0(nbp, sizeof *nbp);
	nbp->nbp_timo.tv_sec = 15;	/* XXX: sysctl ? */
	nbp->nbp_state = NBST_CLOSED;
	nbp->nbp_vc = vcp;
	nbp->nbp_sndbuf = smb_tcpsndbuf;
	nbp->nbp_rcvbuf = smb_tcprcvbuf;
	vcp->vc_tdata = nbp;
	return 0;
}