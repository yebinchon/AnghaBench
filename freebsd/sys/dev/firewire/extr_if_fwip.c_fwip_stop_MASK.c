#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ifnet {int if_drv_flags; } ;
struct TYPE_7__ {int /*<<< orphan*/  xferlist; } ;
struct TYPE_6__ {struct firewire_comm* fc; } ;
struct TYPE_5__ {struct ifnet* fwip_ifp; } ;
struct fwip_softc {size_t dma_ch; int /*<<< orphan*/  xferlist; TYPE_3__ fwb; TYPE_2__ fd; TYPE_1__ fw_softc; } ;
struct fw_xferq {int flag; int bnchunk; TYPE_4__* bulkxfer; int /*<<< orphan*/ * hand; } ;
struct fw_xfer {int dummy; } ;
struct firewire_comm {int /*<<< orphan*/  (* irx_disable ) (struct firewire_comm*,size_t) ;struct fw_xferq** ir; } ;
struct TYPE_8__ {int /*<<< orphan*/  mbuf; } ;

/* Variables and functions */
 int FWXFERQ_CHTAGMASK ; 
 int FWXFERQ_EXTBUF ; 
 int FWXFERQ_HANDLER ; 
 int FWXFERQ_MODEMASK ; 
 int FWXFERQ_OPEN ; 
 int FWXFERQ_RUNNING ; 
 int FWXFERQ_STREAM ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  M_FWIP ; 
 struct fw_xfer* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct fw_xfer* FUNC2 (struct fw_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct firewire_comm*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (struct fw_xfer*) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct firewire_comm*,size_t) ; 

__attribute__((used)) static void
FUNC8(struct fwip_softc *fwip)
{
	struct firewire_comm *fc;
	struct fw_xferq *xferq;
	struct ifnet *ifp = fwip->fw_softc.fwip_ifp;
	struct fw_xfer *xfer, *next;
	int i;

	fc = fwip->fd.fc;

	if (fwip->dma_ch >= 0) {
		xferq = fc->ir[fwip->dma_ch];

		if (xferq->flag & FWXFERQ_RUNNING)
			fc->irx_disable(fc, fwip->dma_ch);
		xferq->flag &= 
			~(FWXFERQ_MODEMASK | FWXFERQ_OPEN | FWXFERQ_STREAM |
			FWXFERQ_EXTBUF | FWXFERQ_HANDLER | FWXFERQ_CHTAGMASK);
		xferq->hand =  NULL;

		for (i = 0; i < xferq->bnchunk; i++)
			FUNC6(xferq->bulkxfer[i].mbuf);
		FUNC3(xferq->bulkxfer, M_FWIP);

		FUNC4(fc, &fwip->fwb);
		for (xfer = FUNC0(&fwip->fwb.xferlist); xfer != NULL;
					xfer = next) {
			next = FUNC2(xfer, link);
			FUNC5(xfer);
		}

		for (xfer = FUNC0(&fwip->xferlist); xfer != NULL;
					xfer = next) {
			next = FUNC2(xfer, link);
			FUNC5(xfer);
		}
		FUNC1(&fwip->xferlist);

		xferq->bulkxfer =  NULL;
		fwip->dma_ch = -1;
	}

	ifp->if_drv_flags &= ~(IFF_DRV_RUNNING | IFF_DRV_OACTIVE);
}