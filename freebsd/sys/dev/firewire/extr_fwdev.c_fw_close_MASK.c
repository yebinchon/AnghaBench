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
struct fw_xferq {int flag; int /*<<< orphan*/  dmach; int /*<<< orphan*/  q; int /*<<< orphan*/  queued; } ;
struct fw_xfer {scalar_t__ resp; } ;
struct fw_drv1 {struct fw_xferq* it; struct fw_xferq* ir; int /*<<< orphan*/  xferlist; int /*<<< orphan*/  binds; struct firewire_comm* fc; } ;
struct fw_bind {struct fw_xferq* it; struct fw_xferq* ir; int /*<<< orphan*/  xferlist; int /*<<< orphan*/  binds; struct firewire_comm* fc; } ;
struct firewire_comm {int /*<<< orphan*/  (* itx_disable ) (struct firewire_comm*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* irx_disable ) (struct firewire_comm*,int /*<<< orphan*/ ) ;} ;
struct cdev {struct fw_drv1* si_drv1; } ;
typedef  int /*<<< orphan*/  fw_proc ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct cdev*) ; 
 int EINVAL ; 
 int FWXFERQ_CHTAGMASK ; 
 int FWXFERQ_MODEMASK ; 
 int FWXFERQ_OPEN ; 
 int FWXFERQ_RUNNING ; 
 int /*<<< orphan*/  M_FW ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  chlist ; 
 int /*<<< orphan*/  FUNC3 (struct fw_drv1*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct firewire_comm*,struct fw_drv1*) ; 
 int /*<<< orphan*/  FUNC5 (struct fw_xfer*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct fw_xferq*) ; 
 int FUNC8 (struct cdev*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC9 (struct firewire_comm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct firewire_comm*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(struct cdev *dev, int flags, int fmt, fw_proc *td)
{
	struct firewire_comm *fc;
	struct fw_drv1 *d;
	struct fw_xfer *xfer;
	struct fw_bind *fwb;
	int err = 0;

	if (FUNC0(dev))
		return FUNC8(dev, flags, fmt, td);

	d = dev->si_drv1;
	fc = d->fc;

	/* remove binding */
	for (fwb = FUNC1(&d->binds); fwb != NULL;
	    fwb = FUNC1(&d->binds)) {
		FUNC4(fc, fwb);
		FUNC2(&d->binds, chlist);
		FUNC6(&fwb->xferlist);
		FUNC3(fwb, M_FW);
	}
	if (d->ir != NULL) {
		struct fw_xferq *ir = d->ir;

		if ((ir->flag & FWXFERQ_OPEN) == 0)
			return (EINVAL);
		if (ir->flag & FWXFERQ_RUNNING) {
			ir->flag &= ~FWXFERQ_RUNNING;
			fc->irx_disable(fc, ir->dmach);
		}
		/* free extbuf */
		FUNC7(ir);
		/* drain receiving buffer */
		for (xfer = FUNC1(&ir->q);
		    xfer != NULL; xfer = FUNC1(&ir->q)) {
			ir->queued--;
			FUNC2(&ir->q, link);

			xfer->resp = 0;
			FUNC5(xfer);
		}
		ir->flag &= ~(FWXFERQ_OPEN | FWXFERQ_MODEMASK |
		    FWXFERQ_CHTAGMASK);
		d->ir = NULL;

	}
	if (d->it != NULL) {
		struct fw_xferq *it = d->it;

		if ((it->flag & FWXFERQ_OPEN) == 0)
			return (EINVAL);
		if (it->flag & FWXFERQ_RUNNING) {
			it->flag &= ~FWXFERQ_RUNNING;
			fc->itx_disable(fc, it->dmach);
		}
		/* free extbuf */
		FUNC7(it);
		it->flag &= ~(FWXFERQ_OPEN |
		    FWXFERQ_MODEMASK | FWXFERQ_CHTAGMASK);
		d->it = NULL;
	}
	FUNC3(dev->si_drv1, M_FW);
	dev->si_drv1 = NULL;

	return err;
}