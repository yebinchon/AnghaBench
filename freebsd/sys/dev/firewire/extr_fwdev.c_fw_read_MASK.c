#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct uio {scalar_t__ uio_resid; } ;
struct fw_xferq {scalar_t__ queued; scalar_t__ bnpacket; scalar_t__ psize; TYPE_3__* stproc; int /*<<< orphan*/  dmach; int /*<<< orphan*/  stfree; int /*<<< orphan*/ * buf; int /*<<< orphan*/  flag; int /*<<< orphan*/  stvalid; } ;
struct TYPE_5__ {scalar_t__ len; } ;
struct TYPE_6__ {TYPE_1__ stream; int /*<<< orphan*/  ld; } ;
struct fw_pkt {TYPE_2__ mode; } ;
struct fw_drv1 {struct fw_xferq* ir; struct firewire_comm* fc; } ;
struct firewire_comm {int /*<<< orphan*/  (* irx_enable ) (struct firewire_comm*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* irx_post ) (struct firewire_comm*,int /*<<< orphan*/ ) ;} ;
struct cdev {struct fw_drv1* si_drv1; } ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_7__ {scalar_t__ poffset; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct cdev*) ; 
 int EIO ; 
 int /*<<< orphan*/  FWPRI ; 
 int /*<<< orphan*/  FWXFERQ_WAKEUP ; 
 int /*<<< orphan*/  FUNC1 (struct firewire_comm*) ; 
 int /*<<< orphan*/  FUNC2 (struct firewire_comm*) ; 
 int /*<<< orphan*/  FUNC3 (struct firewire_comm*) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct fw_drv1*,struct uio*,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  link ; 
 int FUNC9 (struct fw_xferq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct cdev*,struct uio*,int) ; 
 int FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (struct firewire_comm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct firewire_comm*,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ,scalar_t__,struct uio*) ; 

__attribute__((used)) static int
FUNC16(struct cdev *dev, struct uio *uio, int ioflag)
{
	struct fw_drv1 *d;
	struct fw_xferq *ir;
	struct firewire_comm *fc;
	int err = 0, s, slept = 0;
	struct fw_pkt *fp;

	if (FUNC0(dev))
		return (FUNC10(dev, uio, ioflag));

	d = dev->si_drv1;
	fc = d->fc;
	ir = d->ir;

	if (ir == NULL)
		return (FUNC7(d, uio, ioflag));

	if (ir->buf == NULL)
		return (EIO);

	FUNC1(fc);
readloop:
	if (ir->stproc == NULL) {
		/* iso bulkxfer */
		ir->stproc = FUNC4(&ir->stvalid);
		if (ir->stproc != NULL) {
			s = FUNC11();
			FUNC6(&ir->stvalid, link);
			FUNC12(s);
			ir->queued = 0;
		}
	}
	if (ir->stproc == NULL) {
		/* no data available */
		if (slept == 0) {
			slept = 1;
			ir->flag |= FWXFERQ_WAKEUP;
			err = FUNC9(ir, FUNC2(fc), FWPRI, "fw_read", hz);
			ir->flag &= ~FWXFERQ_WAKEUP;
			if (err == 0)
				goto readloop;
		} else if (slept == 1)
			err = EIO;
		FUNC3(fc);
		return err;
	} else if (ir->stproc != NULL) {
		/* iso bulkxfer */
		FUNC3(fc);
		fp = (struct fw_pkt *)FUNC8(ir->buf,
		    ir->stproc->poffset + ir->queued);
		if (fc->irx_post != NULL)
			fc->irx_post(fc, fp->mode.ld);
		if (fp->mode.stream.len == 0) {
			err = EIO;
			return err;
		}
		err = FUNC15((caddr_t)fp,
			fp->mode.stream.len + sizeof(uint32_t), uio);
		ir->queued++;
		if (ir->queued >= ir->bnpacket) {
			s = FUNC11();
			FUNC5(&ir->stfree, ir->stproc, link);
			FUNC12(s);
			fc->irx_enable(fc, ir->dmach);
			ir->stproc = NULL;
		}
		if (uio->uio_resid >= ir->psize) {
			slept = -1;
			FUNC1(fc);
			goto readloop;
		}
	}
	return err;
}