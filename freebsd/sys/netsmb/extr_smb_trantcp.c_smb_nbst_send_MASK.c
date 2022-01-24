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
struct nbpcb {scalar_t__ nbp_state; int /*<<< orphan*/  nbp_tso; } ;
struct mbuf {int dummy; } ;

/* Variables and functions */
 int ENOTCONN ; 
 int /*<<< orphan*/  FUNC0 (struct mbuf*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_WAITOK ; 
 scalar_t__ NBST_SESSION ; 
 int /*<<< orphan*/  NB_SSN_MESSAGE ; 
 scalar_t__ FUNC1 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct mbuf*,int /*<<< orphan*/ ,struct thread*) ; 

__attribute__((used)) static int
FUNC5(struct smb_vc *vcp, struct mbuf *m0, struct thread *td)
{
	struct nbpcb *nbp = vcp->vc_tdata;
	int error;

	if (nbp->nbp_state != NBST_SESSION) {
		error = ENOTCONN;
		goto abort;
	}
	FUNC0(m0, 4, M_WAITOK);
	FUNC3(m0, NB_SSN_MESSAGE, FUNC1(m0) - 4);
	error = FUNC4(nbp->nbp_tso, m0, 0, td);
	return error;
abort:
	if (m0)
		FUNC2(m0);
	return error;
}