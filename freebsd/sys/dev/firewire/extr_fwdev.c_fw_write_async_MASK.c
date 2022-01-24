#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct uio {int uio_resid; } ;
struct tcode_info {int hdr_len; } ;
struct TYPE_9__ {int pay_len; int spd; int /*<<< orphan*/ * payload; int /*<<< orphan*/  hdr; } ;
struct fw_xfer {int resp; int flag; TYPE_4__* fc; TYPE_3__ send; int /*<<< orphan*/  hand; int /*<<< orphan*/ * sc; } ;
struct TYPE_7__ {size_t tcode; } ;
struct TYPE_8__ {TYPE_1__ hdr; } ;
struct fw_pkt {TYPE_2__ mode; } ;
struct fw_drv1 {int /*<<< orphan*/  rq; TYPE_4__* fc; } ;
typedef  scalar_t__ caddr_t ;
struct TYPE_10__ {struct tcode_info* tcode; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FWXF_RCVD ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  M_FWXFER ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct fw_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fw_pkt*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct fw_pkt*,int) ; 
 int FUNC5 (TYPE_4__*,int,struct fw_xfer*) ; 
 struct fw_xfer* FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct fw_xfer*) ; 
 int FUNC8 (struct fw_xfer*) ; 
 int /*<<< orphan*/  fw_xferwake ; 
 int /*<<< orphan*/  link ; 
 int FUNC9 (scalar_t__,int,struct uio*) ; 

__attribute__((used)) static int
FUNC10(struct fw_drv1 *d, struct uio *uio, int ioflag)
{
	struct fw_xfer *xfer;
	struct fw_pkt pkt;
	struct tcode_info *tinfo;
	int err;

	FUNC4(&pkt, sizeof(struct fw_pkt));
	if ((err = FUNC9((caddr_t)&pkt, sizeof(uint32_t), uio)))
		return (err);
	tinfo = &d->fc->tcode[pkt.mode.hdr.tcode];
	if ((err = FUNC9((caddr_t)&pkt + sizeof(uint32_t),
	    tinfo->hdr_len - sizeof(uint32_t), uio)))
		return (err);

	if ((xfer = FUNC6(M_FWXFER, uio->uio_resid,
	    PAGE_SIZE/*XXX*/)) == NULL)
		return (ENOMEM);

	FUNC3(&pkt, &xfer->send.hdr, sizeof(struct fw_pkt));
	xfer->send.pay_len = uio->uio_resid;
	if (uio->uio_resid > 0) {
		if ((err = FUNC9((caddr_t)&xfer->send.payload[0],
		    uio->uio_resid, uio)))
			goto out;
	}

	xfer->fc = d->fc;
	xfer->sc = NULL;
	xfer->hand = fw_xferwake;
	xfer->send.spd = 2 /* XXX */;

	if ((err = FUNC5(xfer->fc, -1, xfer)))
		goto out;

	if ((err = FUNC8(xfer)))
		goto out;

	if (xfer->resp != 0) {
		err = xfer->resp;
		goto out;
	}

	if (xfer->flag & FWXF_RCVD) {
		FUNC0(xfer->fc);
		FUNC2(&d->rq, xfer, link);
		FUNC1(xfer->fc);
		return (0);
	}

out:
	FUNC7(xfer);
	return (err);
}