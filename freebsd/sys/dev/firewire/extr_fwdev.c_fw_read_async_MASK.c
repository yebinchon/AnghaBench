#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct uio {int dummy; } ;
struct tcode_info {int /*<<< orphan*/  hdr_len; } ;
struct TYPE_9__ {size_t tcode; } ;
struct TYPE_10__ {TYPE_1__ hdr; int /*<<< orphan*/  ld; } ;
struct fw_pkt {TYPE_2__ mode; } ;
struct TYPE_11__ {int /*<<< orphan*/  pay_len; struct fw_pkt* payload; struct fw_pkt hdr; } ;
struct fw_xfer {TYPE_6__* fc; TYPE_3__ recv; scalar_t__ sc; } ;
struct fw_drv1 {int /*<<< orphan*/  rq; TYPE_6__* fc; } ;
struct fw_bind {int /*<<< orphan*/  xferlist; } ;
struct TYPE_13__ {struct tcode_info* tcode; } ;
struct TYPE_12__ {int /*<<< orphan*/  (* irx_post ) (TYPE_4__*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FWPRI ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct fw_xfer* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct fw_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_4__* fc ; 
 int /*<<< orphan*/  FUNC6 (struct fw_xfer*) ; 
 int /*<<< orphan*/  link ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct fw_pkt*,int /*<<< orphan*/ ,struct uio*) ; 

__attribute__((used)) static int
FUNC12(struct fw_drv1 *d, struct uio *uio, int ioflag)
{
	int err = 0, s;
	struct fw_xfer *xfer;
	struct fw_bind *fwb;
	struct fw_pkt *fp;
	struct tcode_info *tinfo;

	FUNC0(d->fc);
	while ((xfer = FUNC3(&d->rq)) == NULL && err == 0)
		err = FUNC7(&d->rq, FUNC1(d->fc), FWPRI, "fwra", 0);

	if (err != 0) {
		FUNC2(d->fc);
		return (err);
	}

	s = FUNC8();
	FUNC5(&d->rq, link);
	FUNC2(xfer->fc);
	FUNC9(s);
	fp = &xfer->recv.hdr;
#if 0 /* for GASP ?? */
	if (fc->irx_post != NULL)
		fc->irx_post(fc, fp->mode.ld);
#endif
	tinfo = &xfer->fc->tcode[fp->mode.hdr.tcode];
	err = FUNC11(fp, tinfo->hdr_len, uio);
	if (err)
		goto out;
	err = FUNC11(xfer->recv.payload, xfer->recv.pay_len, uio);

out:
	/* recycle this xfer */
	fwb = (struct fw_bind *)xfer->sc;
	FUNC6(xfer);
	xfer->recv.pay_len = PAGE_SIZE;
	FUNC0(xfer->fc);
	FUNC4(&fwb->xferlist, xfer, link);
	FUNC2(xfer->fc);
	return (err);
}