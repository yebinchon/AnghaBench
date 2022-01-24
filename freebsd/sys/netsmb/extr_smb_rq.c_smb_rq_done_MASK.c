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
struct smb_rq {int sr_flags; int /*<<< orphan*/  sr_slock; int /*<<< orphan*/  sr_rp; int /*<<< orphan*/  sr_rq; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_SMBRQ ; 
 int SMBR_ALLOCED ; 
 int /*<<< orphan*/  FUNC0 (struct smb_rq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(struct smb_rq *rqp)
{
	FUNC1(&rqp->sr_rq);
	FUNC2(&rqp->sr_rp);
	FUNC3(&rqp->sr_slock);
	if (rqp->sr_flags & SMBR_ALLOCED)
		FUNC0(rqp, M_SMBRQ);
}