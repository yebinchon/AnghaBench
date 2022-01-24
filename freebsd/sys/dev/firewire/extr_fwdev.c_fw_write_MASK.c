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
struct uio {int uio_resid; } ;
struct fw_xferq {scalar_t__ queued; scalar_t__ bnpacket; int /*<<< orphan*/  dmach; TYPE_3__* stproc; int /*<<< orphan*/  stvalid; int /*<<< orphan*/ * buf; int /*<<< orphan*/  stfree; } ;
struct TYPE_5__ {int len; scalar_t__ payload; } ;
struct TYPE_6__ {TYPE_1__ stream; } ;
struct fw_pkt {TYPE_2__ mode; } ;
struct fw_isohdr {int dummy; } ;
struct fw_drv1 {struct fw_xferq* it; struct firewire_comm* fc; } ;
struct firewire_comm {int (* itx_enable ) (struct firewire_comm*,int /*<<< orphan*/ ) ;} ;
struct cdev {struct fw_drv1* si_drv1; } ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_7__ {scalar_t__ poffset; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct cdev*) ; 
 int EIO ; 
 int /*<<< orphan*/  FWPRI ; 
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
 int FUNC13 (struct firewire_comm*,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct firewire_comm*,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ,int,struct uio*) ; 

__attribute__((used)) static int
FUNC16(struct cdev *dev, struct uio *uio, int ioflag)
{
	int err = 0;
	int s, slept = 0;
	struct fw_drv1 *d;
	struct fw_pkt *fp;
	struct firewire_comm *fc;
	struct fw_xferq *it;

	if (FUNC0(dev))
		return (FUNC10(dev, uio, ioflag));

	d = dev->si_drv1;
	fc = d->fc;
	it = d->it;

	if (it == NULL)
		return (FUNC7(d, uio, ioflag));

	if (it->buf == NULL)
		return (EIO);

	FUNC1(fc);
isoloop:
	if (it->stproc == NULL) {
		it->stproc = FUNC4(&it->stfree);
		if (it->stproc != NULL) {
			s = FUNC11();
			FUNC6(&it->stfree, link);
			FUNC12(s);
			it->queued = 0;
		} else if (slept == 0) {
			slept = 1;
#if 0	/* XXX to avoid lock recursion */
			err = fc->itx_enable(fc, it->dmach);
			if (err)
				goto out;
#endif
			err = FUNC9(it, FUNC2(fc), FWPRI, "fw_write", hz);
			if (err)
				goto out;
			goto isoloop;
		} else {
			err = EIO;
			goto out;
		}
	}
	FUNC3(fc);
	fp = (struct fw_pkt *)FUNC8(it->buf,
			it->stproc->poffset + it->queued);
	err = FUNC15((caddr_t)fp, sizeof(struct fw_isohdr), uio);
	err = FUNC15((caddr_t)fp->mode.stream.payload,
				fp->mode.stream.len, uio);
	it->queued++;
	if (it->queued >= it->bnpacket) {
		s = FUNC11();
		FUNC5(&it->stvalid, it->stproc, link);
		FUNC12(s);
		it->stproc = NULL;
		err = fc->itx_enable(fc, it->dmach);
	}
	if (uio->uio_resid >= sizeof(struct fw_isohdr)) {
		slept = 0;
		FUNC1(fc);
		goto isoloop;
	}
	return err;

out:
	FUNC3(fc);
	return err;
}