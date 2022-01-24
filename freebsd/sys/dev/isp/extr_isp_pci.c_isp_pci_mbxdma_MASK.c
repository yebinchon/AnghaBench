#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;
typedef  struct TYPE_21__   TYPE_19__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  size_t uint32_t ;
struct isp_pcmd {struct isp_pcmd* next; int /*<<< orphan*/  wdog; int /*<<< orphan*/  dmap; } ;
struct isp_nexus {struct isp_nexus* next; } ;
struct isp_fc {struct isp_nexus* nexus_free_list; int /*<<< orphan*/  scmap; } ;
struct imush {int error; scalar_t__ maddr; } ;
struct TYPE_22__ {struct isp_pcmd* pcmd_pool; struct isp_pcmd* pcmd_free; int /*<<< orphan*/  dmat; int /*<<< orphan*/  scdmat; int /*<<< orphan*/  iocbmap; int /*<<< orphan*/  iocbdmat; int /*<<< orphan*/  atiomap; int /*<<< orphan*/  atiodmat; int /*<<< orphan*/  respmap; int /*<<< orphan*/  respdmat; TYPE_4__* ecmd_free; TYPE_4__* ecmd_base; scalar_t__ ecmd_dma; int /*<<< orphan*/  reqmap; int /*<<< orphan*/  reqdmat; } ;
struct TYPE_23__ {int isp_maxcmds; scalar_t__ isp_type; int isp_nchan; TYPE_3__* isp_xflist; TYPE_3__* isp_xffree; TYPE_1__ isp_osinfo; int /*<<< orphan*/  isp_lock; scalar_t__ isp_iocb_dma; void* isp_iocb; scalar_t__ isp_atioq_dma; void* isp_atioq; scalar_t__ isp_result_dma; void* isp_result; scalar_t__ isp_rquest_dma; int /*<<< orphan*/ * isp_rquest; } ;
typedef  TYPE_2__ ispsoftc_t ;
struct TYPE_24__ {struct TYPE_24__* cmd; } ;
typedef  TYPE_3__ isp_hdl_t ;
struct TYPE_25__ {struct TYPE_25__* next; } ;
typedef  TYPE_4__ isp_ecmd_t ;
typedef  void* caddr_t ;
typedef  int bus_size_t ;
typedef  int /*<<< orphan*/  bus_addr_t ;
struct TYPE_21__ {scalar_t__ isp_scdma; int /*<<< orphan*/ * isp_scratch; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMA_COHERENT ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int BUS_SPACE_MAXSIZE ; 
 TYPE_19__* FUNC0 (TYPE_2__*,int) ; 
 int INITIAL_NEXUS_COUNT ; 
 struct isp_fc* FUNC1 (TYPE_2__*,int) ; 
 int ISP_FC_SCRLEN ; 
 scalar_t__ ISP_HA_FC_2200 ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  ISP_LOGDEBUG0 ; 
 int /*<<< orphan*/  ISP_LOGERR ; 
 size_t ISP_NSEG64_MAX ; 
 size_t ISP_NSEG_MAX ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 scalar_t__ FUNC8 (TYPE_2__*) ; 
 scalar_t__ FUNC9 (TYPE_2__*) ; 
 scalar_t__ FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 size_t N_XCMDS ; 
 int QENTRY_LEN ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 size_t XCMD_SIZE ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ,struct imush*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,void**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  busdma_lock_mutex ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct isp_nexus*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  imc ; 
 int /*<<< orphan*/  FUNC23 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_2__*,int /*<<< orphan*/ ,char*,...) ; 
 struct isp_nexus* FUNC25 (size_t,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC26(ispsoftc_t *isp)
{
	caddr_t base;
	uint32_t len, nsegs;
	int i, error, cmap = 0;
	bus_size_t slim;	/* segment size */
	bus_addr_t llim;	/* low limit of unavailable dma */
	bus_addr_t hlim;	/* high limit of unavailable dma */
	struct imush im;
	isp_ecmd_t *ecmd;

	/* Already been here? If so, leave... */
	if (isp->isp_xflist != NULL)
		return (0);
	if (isp->isp_rquest != NULL && isp->isp_maxcmds == 0)
		return (0);
	FUNC5(isp);
	if (isp->isp_rquest != NULL)
		goto gotmaxcmds;

	hlim = BUS_SPACE_MAXADDR;
	if (FUNC10(isp) || FUNC9(isp) || FUNC6(isp)) {
		if (sizeof (bus_size_t) > 4)
			slim = (bus_size_t) (1ULL << 32);
		else
			slim = (bus_size_t) (1UL << 31);
		llim = BUS_SPACE_MAXADDR;
	} else {
		slim = (1UL << 24);
		llim = BUS_SPACE_MAXADDR_32BIT;
	}
	if (sizeof (bus_size_t) > 4)
		nsegs = ISP_NSEG64_MAX;
	else
		nsegs = ISP_NSEG_MAX;

	if (FUNC13(FUNC20(FUNC3(isp)), 1,
	    slim, llim, hlim, NULL, NULL, BUS_SPACE_MAXSIZE, nsegs, slim, 0,
	    busdma_lock_mutex, &isp->isp_lock, &isp->isp_osinfo.dmat)) {
		FUNC2(isp);
		FUNC24(isp, ISP_LOGERR, "could not create master dma tag");
		return (1);
	}

	/*
	 * Allocate and map the request queue and a region for external
	 * DMA addressable command/status structures (22XX and later).
	 */
	len = FUNC4(FUNC12(isp));
	if (isp->isp_type >= ISP_HA_FC_2200)
		len += (N_XCMDS * XCMD_SIZE);
	if (FUNC13(isp->isp_osinfo.dmat, QENTRY_LEN, slim,
	    BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR, NULL, NULL,
	    len, 1, len, 0, busdma_lock_mutex, &isp->isp_lock,
	    &isp->isp_osinfo.reqdmat)) {
		FUNC24(isp, ISP_LOGERR, "cannot create request DMA tag");
		goto bad;
	}
	if (FUNC18(isp->isp_osinfo.reqdmat, (void **)&base,
	    BUS_DMA_COHERENT, &isp->isp_osinfo.reqmap) != 0) {
		FUNC24(isp, ISP_LOGERR, "cannot allocate request DMA memory");
		FUNC14(isp->isp_osinfo.reqdmat);
		goto bad;
	}
	isp->isp_rquest = base;
	im.error = 0;
	if (FUNC17(isp->isp_osinfo.reqdmat, isp->isp_osinfo.reqmap,
	    base, len, imc, &im, 0) || im.error) {
		FUNC24(isp, ISP_LOGERR, "error loading request DMA map %d", im.error);
		goto bad;
	}
	FUNC24(isp, ISP_LOGDEBUG0, "request area @ 0x%jx/0x%jx",
	    (uintmax_t)im.maddr, (uintmax_t)len);
	isp->isp_rquest_dma = im.maddr;
	base += FUNC4(FUNC12(isp));
	im.maddr += FUNC4(FUNC12(isp));
	if (isp->isp_type >= ISP_HA_FC_2200) {
		isp->isp_osinfo.ecmd_dma = im.maddr;
		isp->isp_osinfo.ecmd_free = (isp_ecmd_t *)base;
		isp->isp_osinfo.ecmd_base = isp->isp_osinfo.ecmd_free;
		for (ecmd = isp->isp_osinfo.ecmd_free;
		    ecmd < &isp->isp_osinfo.ecmd_free[N_XCMDS]; ecmd++) {
			if (ecmd == &isp->isp_osinfo.ecmd_free[N_XCMDS - 1])
				ecmd->next = NULL;
			else
				ecmd->next = ecmd + 1;
		}
	}

	/*
	 * Allocate and map the result queue.
	 */
	len = FUNC4(FUNC11(isp));
	if (FUNC13(isp->isp_osinfo.dmat, QENTRY_LEN, slim,
	    BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR, NULL, NULL,
	    len, 1, len, 0, busdma_lock_mutex, &isp->isp_lock,
	    &isp->isp_osinfo.respdmat)) {
		FUNC24(isp, ISP_LOGERR, "cannot create response DMA tag");
		goto bad;
	}
	if (FUNC18(isp->isp_osinfo.respdmat, (void **)&base,
	    BUS_DMA_COHERENT, &isp->isp_osinfo.respmap) != 0) {
		FUNC24(isp, ISP_LOGERR, "cannot allocate response DMA memory");
		FUNC14(isp->isp_osinfo.respdmat);
		goto bad;
	}
	isp->isp_result = base;
	im.error = 0;
	if (FUNC17(isp->isp_osinfo.respdmat, isp->isp_osinfo.respmap,
	    base, len, imc, &im, 0) || im.error) {
		FUNC24(isp, ISP_LOGERR, "error loading response DMA map %d", im.error);
		goto bad;
	}
	FUNC24(isp, ISP_LOGDEBUG0, "response area @ 0x%jx/0x%jx",
	    (uintmax_t)im.maddr, (uintmax_t)len);
	isp->isp_result_dma = im.maddr;

#ifdef	ISP_TARGET_MODE
	/*
	 * Allocate and map ATIO queue on 24xx with target mode.
	 */
	if (IS_24XX(isp)) {
		len = ISP_QUEUE_SIZE(RESULT_QUEUE_LEN(isp));
		if (bus_dma_tag_create(isp->isp_osinfo.dmat, QENTRY_LEN, slim,
		    BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR, NULL, NULL,
		    len, 1, len, 0, busdma_lock_mutex, &isp->isp_lock,
		    &isp->isp_osinfo.atiodmat)) {
			isp_prt(isp, ISP_LOGERR, "cannot create ATIO DMA tag");
			goto bad;
		}
		if (bus_dmamem_alloc(isp->isp_osinfo.atiodmat, (void **)&base,
		    BUS_DMA_COHERENT, &isp->isp_osinfo.atiomap) != 0) {
			isp_prt(isp, ISP_LOGERR, "cannot allocate ATIO DMA memory");
			bus_dma_tag_destroy(isp->isp_osinfo.atiodmat);
			goto bad;
		}
		isp->isp_atioq = base;
		im.error = 0;
		if (bus_dmamap_load(isp->isp_osinfo.atiodmat, isp->isp_osinfo.atiomap,
		    base, len, imc, &im, 0) || im.error) {
			isp_prt(isp, ISP_LOGERR, "error loading ATIO DMA map %d", im.error);
			goto bad;
		}
		isp_prt(isp, ISP_LOGDEBUG0, "ATIO area @ 0x%jx/0x%jx",
		    (uintmax_t)im.maddr, (uintmax_t)len);
		isp->isp_atioq_dma = im.maddr;
	}
#endif

	if (FUNC9(isp)) {
		if (FUNC13(isp->isp_osinfo.dmat, 64, slim,
		    BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR, NULL, NULL,
		    2*QENTRY_LEN, 1, 2*QENTRY_LEN, 0, busdma_lock_mutex,
		    &isp->isp_lock, &isp->isp_osinfo.iocbdmat)) {
			goto bad;
		}
		if (FUNC18(isp->isp_osinfo.iocbdmat,
		    (void **)&base, BUS_DMA_COHERENT, &isp->isp_osinfo.iocbmap) != 0)
			goto bad;
		isp->isp_iocb = base;
		im.error = 0;
		if (FUNC17(isp->isp_osinfo.iocbdmat, isp->isp_osinfo.iocbmap,
		    base, 2*QENTRY_LEN, imc, &im, 0) || im.error)
			goto bad;
		isp->isp_iocb_dma = im.maddr;

		if (FUNC13(isp->isp_osinfo.dmat, 64, slim,
		    BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR, NULL, NULL,
		    ISP_FC_SCRLEN, 1, ISP_FC_SCRLEN, 0, busdma_lock_mutex,
		    &isp->isp_lock, &isp->isp_osinfo.scdmat))
			goto bad;
		for (cmap = 0; cmap < isp->isp_nchan; cmap++) {
			struct isp_fc *fc = FUNC1(isp, cmap);
			if (FUNC18(isp->isp_osinfo.scdmat,
			    (void **)&base, BUS_DMA_COHERENT, &fc->scmap) != 0)
				goto bad;
			FUNC0(isp, cmap)->isp_scratch = base;
			im.error = 0;
			if (FUNC17(isp->isp_osinfo.scdmat, fc->scmap,
			    base, ISP_FC_SCRLEN, imc, &im, 0) || im.error) {
				FUNC19(isp->isp_osinfo.scdmat,
				    base, fc->scmap);
				FUNC0(isp, cmap)->isp_scratch = NULL;
				goto bad;
			}
			FUNC0(isp, cmap)->isp_scdma = im.maddr;
			if (!FUNC7(isp)) {
				for (i = 0; i < INITIAL_NEXUS_COUNT; i++) {
					struct isp_nexus *n = FUNC25(sizeof (struct isp_nexus), M_DEVBUF, M_NOWAIT | M_ZERO);
					if (n == NULL) {
						while (fc->nexus_free_list) {
							n = fc->nexus_free_list;
							fc->nexus_free_list = n->next;
							FUNC22(n, M_DEVBUF);
						}
						goto bad;
					}
					n->next = fc->nexus_free_list;
					fc->nexus_free_list = n;
				}
			}
		}
	}

	if (isp->isp_maxcmds == 0) {
		FUNC2(isp);
		return (0);
	}

gotmaxcmds:
	len = isp->isp_maxcmds * sizeof (struct isp_pcmd);
	isp->isp_osinfo.pcmd_pool = (struct isp_pcmd *)
	    FUNC25(len, M_DEVBUF, M_WAITOK | M_ZERO);
	for (i = 0; i < isp->isp_maxcmds; i++) {
		struct isp_pcmd *pcmd = &isp->isp_osinfo.pcmd_pool[i];
		error = FUNC15(isp->isp_osinfo.dmat, 0, &pcmd->dmap);
		if (error) {
			FUNC24(isp, ISP_LOGERR, "error %d creating per-cmd DMA maps", error);
			while (--i >= 0) {
				FUNC16(isp->isp_osinfo.dmat,
				    isp->isp_osinfo.pcmd_pool[i].dmap);
			}
			goto bad;
		}
		FUNC21(&pcmd->wdog, &isp->isp_lock, 0);
		if (i == isp->isp_maxcmds-1)
			pcmd->next = NULL;
		else
			pcmd->next = &isp->isp_osinfo.pcmd_pool[i+1];
	}
	isp->isp_osinfo.pcmd_free = &isp->isp_osinfo.pcmd_pool[0];

	len = sizeof (isp_hdl_t) * isp->isp_maxcmds;
	isp->isp_xflist = (isp_hdl_t *) FUNC25(len, M_DEVBUF, M_WAITOK | M_ZERO);
	for (len = 0; len < isp->isp_maxcmds - 1; len++)
		isp->isp_xflist[len].cmd = &isp->isp_xflist[len+1];
	isp->isp_xffree = isp->isp_xflist;

	FUNC2(isp);
	return (0);

bad:
	FUNC23(isp);
	FUNC2(isp);
	return (1);
}