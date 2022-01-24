#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_12__ {int /*<<< orphan*/  len; } ;
struct mbuf {TYPE_4__ m_pkthdr; } ;
struct TYPE_15__ {int /*<<< orphan*/ * ifq_head; } ;
struct ifnet {TYPE_8__ if_snd; } ;
struct TYPE_13__ {TYPE_6__* fc; } ;
struct fwe_softc {TYPE_5__ fd; int /*<<< orphan*/  pkt_hdr; int /*<<< orphan*/  xferlist; } ;
struct fw_xferq {int queued; int maxq; int /*<<< orphan*/  (* start ) (TYPE_6__*) ;} ;
struct TYPE_9__ {int /*<<< orphan*/  len; } ;
struct TYPE_10__ {TYPE_1__ stream; } ;
struct fw_pkt {TYPE_2__ mode; } ;
struct TYPE_11__ {int /*<<< orphan*/  pay_len; struct fw_pkt hdr; } ;
struct fw_xfer {TYPE_3__ send; struct mbuf* mbuf; } ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_14__ {struct fw_xferq* atq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ifnet*,struct mbuf*) ; 
 int /*<<< orphan*/  ETHER_ALIGN ; 
 int /*<<< orphan*/  FUNC1 (struct fwe_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct fwe_softc*) ; 
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  IFCOUNTER_OPACKETS ; 
 int /*<<< orphan*/  FUNC3 (TYPE_8__*,struct mbuf*) ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct fw_xfer* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct fw_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_6__*,int,struct fw_xfer*) ; 
 int /*<<< orphan*/  FUNC9 (struct fw_xfer*) ; 
 int /*<<< orphan*/  FUNC10 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_6__*) ; 

__attribute__((used)) static void
FUNC13(struct fwe_softc *fwe, struct ifnet *ifp)
{
	struct mbuf *m;
	struct fw_xfer *xfer;
	struct fw_xferq *xferq;
	struct fw_pkt *fp;
	int i = 0;

	xfer = NULL;
	xferq = fwe->fd.fc->atq;
	while ((xferq->queued < xferq->maxq - 1) &&
			(ifp->if_snd.ifq_head != NULL)) {
		FUNC1(fwe);
		xfer = FUNC5(&fwe->xferlist);
		if (xfer == NULL) {
#if 0
			printf("if_fwe: lack of xfer\n");
#endif
			FUNC2(fwe);
			break;
		}
		FUNC7(&fwe->xferlist, link);
		FUNC2(fwe);

		FUNC3(&ifp->if_snd, m);
		if (m == NULL) {
			FUNC1(fwe);
			FUNC6(&fwe->xferlist, xfer, link);
			FUNC2(fwe);
			break;
		}
		FUNC0(ifp, m);

		/* keep ip packet alignment for alpha */
		FUNC4(m, ETHER_ALIGN, M_NOWAIT);
		fp = &xfer->send.hdr;
		*(uint32_t *)&xfer->send.hdr = *(int32_t *)&fwe->pkt_hdr;
		fp->mode.stream.len = m->m_pkthdr.len;
		xfer->mbuf = m;
		xfer->send.pay_len = m->m_pkthdr.len;

		if (FUNC8(fwe->fd.fc, -1, xfer) != 0) {
			/* error */
			FUNC10(ifp, IFCOUNTER_OERRORS, 1);
			/* XXX set error code */
			FUNC9(xfer);
		} else {
			FUNC10(ifp, IFCOUNTER_OPACKETS, 1);
			i++;
		}
	}
#if 0
	if (i > 1)
		printf("%d queued\n", i);
#endif
	if (i > 0)
		xferq->start(fwe->fd.fc);
}