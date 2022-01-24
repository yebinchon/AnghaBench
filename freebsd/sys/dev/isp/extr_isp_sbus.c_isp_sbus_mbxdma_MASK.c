#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  int uint32_t ;
struct isp_pcmd {struct isp_pcmd* next; int /*<<< orphan*/  wdog; int /*<<< orphan*/  dmap; } ;
struct imush {int error; scalar_t__ maddr; } ;
struct TYPE_12__ {struct isp_pcmd* pcmd_pool; struct isp_pcmd* pcmd_free; int /*<<< orphan*/  dmat; int /*<<< orphan*/  respmap; int /*<<< orphan*/  respdmat; int /*<<< orphan*/  reqmap; int /*<<< orphan*/  reqdmat; } ;
struct TYPE_13__ {int isp_maxcmds; TYPE_3__* isp_xflist; TYPE_3__* isp_xffree; TYPE_1__ isp_osinfo; int /*<<< orphan*/  isp_lock; scalar_t__ isp_result_dma; void* isp_result; scalar_t__ isp_rquest_dma; int /*<<< orphan*/ * isp_rquest; } ;
typedef  TYPE_2__ ispsoftc_t ;
struct TYPE_14__ {struct TYPE_14__* cmd; } ;
typedef  TYPE_3__ isp_hdl_t ;
typedef  void* caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMA_COHERENT ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int BUS_SPACE_MAXADDR_24BIT ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int BUS_SPACE_MAXSIZE_32BIT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  ISP_LOGDEBUG0 ; 
 int /*<<< orphan*/  ISP_LOGERR ; 
 int ISP_NSEG_MAX ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int QENTRY_LEN ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ,struct imush*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,void**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  busdma_lock_mutex ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  imc ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 scalar_t__ FUNC16 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC17(ispsoftc_t *isp)
{
	caddr_t base;
	uint32_t len;
	int i, error;
	struct imush im;

	/* Already been here? If so, leave... */
	if (isp->isp_xflist != NULL)
		return (0);
	if (isp->isp_rquest != NULL && isp->isp_maxcmds == 0)
		return (0);
	FUNC3(isp);
	if (isp->isp_rquest != NULL)
		goto gotmaxcmds;

	if (FUNC6(FUNC12(FUNC2(isp)), 1,
	    BUS_SPACE_MAXADDR_24BIT+1, BUS_SPACE_MAXADDR_32BIT,
	    BUS_SPACE_MAXADDR_32BIT, NULL, NULL, BUS_SPACE_MAXSIZE_32BIT,
	    ISP_NSEG_MAX, BUS_SPACE_MAXADDR_24BIT, 0,
	    busdma_lock_mutex, &isp->isp_lock, &isp->isp_osinfo.dmat)) {
		FUNC14(isp, ISP_LOGERR, "could not create master dma tag");
		goto bad;
	}

	/*
	 * Allocate and map the request queue.
	 */
	len = FUNC1(FUNC5(isp));
	if (FUNC6(isp->isp_osinfo.dmat, QENTRY_LEN, BUS_SPACE_MAXADDR_24BIT+1,
	    BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR, NULL, NULL,
	    len, 1, len, 0, busdma_lock_mutex, &isp->isp_lock,
	    &isp->isp_osinfo.reqdmat)) {
		FUNC14(isp, ISP_LOGERR, "cannot create request DMA tag");
		goto bad;
	}
	if (FUNC11(isp->isp_osinfo.reqdmat, (void **)&base,
	    BUS_DMA_COHERENT, &isp->isp_osinfo.reqmap) != 0) {
		FUNC14(isp, ISP_LOGERR, "cannot allocate request DMA memory");
		FUNC7(isp->isp_osinfo.reqdmat);
		goto bad;
	}
	isp->isp_rquest = base;
	im.error = 0;
	if (FUNC10(isp->isp_osinfo.reqdmat, isp->isp_osinfo.reqmap,
	    base, len, imc, &im, 0) || im.error) {
		FUNC14(isp, ISP_LOGERR, "error loading request DMA map %d", im.error);
		goto bad;
	}
	FUNC14(isp, ISP_LOGDEBUG0, "request area @ 0x%jx/0x%jx",
	    (uintmax_t)im.maddr, (uintmax_t)len);
	isp->isp_rquest_dma = im.maddr;

	/*
	 * Allocate and map the result queue.
	 */
	len = FUNC1(FUNC4(isp));
	if (FUNC6(isp->isp_osinfo.dmat, QENTRY_LEN, BUS_SPACE_MAXADDR_24BIT+1,
	    BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR, NULL, NULL,
	    len, 1, len, 0, busdma_lock_mutex, &isp->isp_lock,
	    &isp->isp_osinfo.respdmat)) {
		FUNC14(isp, ISP_LOGERR, "cannot create response DMA tag");
		goto bad;
	}
	if (FUNC11(isp->isp_osinfo.respdmat, (void **)&base,
	    BUS_DMA_COHERENT, &isp->isp_osinfo.respmap) != 0) {
		FUNC14(isp, ISP_LOGERR, "cannot allocate response DMA memory");
		FUNC7(isp->isp_osinfo.respdmat);
		goto bad;
	}
	isp->isp_result = base;
	im.error = 0;
	if (FUNC10(isp->isp_osinfo.respdmat, isp->isp_osinfo.respmap,
	    base, len, imc, &im, 0) || im.error) {
		FUNC14(isp, ISP_LOGERR, "error loading response DMA map %d", im.error);
		goto bad;
	}
	FUNC14(isp, ISP_LOGDEBUG0, "response area @ 0x%jx/0x%jx",
	    (uintmax_t)im.maddr, (uintmax_t)len);
	isp->isp_result_dma = im.maddr;

	if (isp->isp_maxcmds == 0) {
		FUNC0(isp);
		return (0);
	}

gotmaxcmds:
	len = sizeof (struct isp_pcmd) * isp->isp_maxcmds;
	isp->isp_osinfo.pcmd_pool = (struct isp_pcmd *)
	    FUNC16(len, M_DEVBUF, M_WAITOK | M_ZERO);
	for (i = 0; i < isp->isp_maxcmds; i++) {
		struct isp_pcmd *pcmd = &isp->isp_osinfo.pcmd_pool[i];
		error = FUNC8(isp->isp_osinfo.dmat, 0, &pcmd->dmap);
		if (error) {
			FUNC14(isp, ISP_LOGERR,
			    "error %d creating per-cmd DMA maps", error);
			while (--i >= 0) {
				FUNC9(isp->isp_osinfo.dmat,
				    isp->isp_osinfo.pcmd_pool[i].dmap);
			}
			goto bad;
		}
		FUNC13(&pcmd->wdog, &isp->isp_lock, 0);
		if (i == isp->isp_maxcmds-1) {
			pcmd->next = NULL;
		} else {
			pcmd->next = &isp->isp_osinfo.pcmd_pool[i+1];
		}
	}
	isp->isp_osinfo.pcmd_free = &isp->isp_osinfo.pcmd_pool[0];

	len = sizeof (isp_hdl_t *) * isp->isp_maxcmds;
	isp->isp_xflist = (isp_hdl_t *) FUNC16(len, M_DEVBUF, M_WAITOK | M_ZERO);
	for (len = 0; len < isp->isp_maxcmds - 1; len++)
		isp->isp_xflist[len].cmd = &isp->isp_xflist[len+1];
	isp->isp_xffree = isp->isp_xflist;

	FUNC0(isp);
	return (0);

bad:
	FUNC15(isp);
	FUNC0(isp);
	return (1);
}