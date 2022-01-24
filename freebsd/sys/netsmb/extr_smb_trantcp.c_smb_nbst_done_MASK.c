#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct thread {int dummy; } ;
struct smb_vc {struct nbpcb* vc_tdata; } ;
struct nbpcb {struct nbpcb* nbp_paddr; struct nbpcb* nbp_laddr; } ;

/* Variables and functions */
 int ENOTCONN ; 
 int /*<<< orphan*/  M_NBDATA ; 
 int /*<<< orphan*/  M_SONAME ; 
 int /*<<< orphan*/  FUNC0 (struct nbpcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct smb_vc*,struct thread*) ; 

__attribute__((used)) static int
FUNC2(struct smb_vc *vcp, struct thread *td)
{
	struct nbpcb *nbp = vcp->vc_tdata;

	if (nbp == NULL)
		return ENOTCONN;
	FUNC1(vcp, td);
	if (nbp->nbp_laddr)
		FUNC0(nbp->nbp_laddr, M_SONAME);
	if (nbp->nbp_paddr)
		FUNC0(nbp->nbp_paddr, M_SONAME);
	FUNC0(nbp, M_NBDATA);
	return 0;
}