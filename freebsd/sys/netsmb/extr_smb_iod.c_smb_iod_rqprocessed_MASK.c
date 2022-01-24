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
struct smb_rq {int sr_lerror; int /*<<< orphan*/  sr_state; int /*<<< orphan*/  sr_rpgen; } ;

/* Variables and functions */
 int /*<<< orphan*/  SMBRQ_NOTIFIED ; 
 int /*<<< orphan*/  FUNC0 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC1 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static __inline void
FUNC3(struct smb_rq *rqp, int error)
{
	FUNC0(rqp);
	rqp->sr_lerror = error;
	rqp->sr_rpgen++;
	rqp->sr_state = SMBRQ_NOTIFIED;
	FUNC2(&rqp->sr_state);
	FUNC1(rqp);
}