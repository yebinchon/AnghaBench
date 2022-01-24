#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct isp_nexus {struct isp_nexus* next; int /*<<< orphan*/  dmap; } ;
struct isp_fc {struct isp_nexus* nexus_free_list; int /*<<< orphan*/  scmap; } ;
struct TYPE_9__ {int /*<<< orphan*/  reqdmat; int /*<<< orphan*/  reqmap; int /*<<< orphan*/  respdmat; int /*<<< orphan*/  respmap; int /*<<< orphan*/  atiodmat; int /*<<< orphan*/  atiomap; int /*<<< orphan*/  iocbdmat; int /*<<< orphan*/  iocbmap; int /*<<< orphan*/  scdmat; struct isp_nexus* pcmd_pool; int /*<<< orphan*/  dmat; } ;
struct TYPE_10__ {int isp_maxcmds; int isp_nchan; scalar_t__ isp_iocb_dma; scalar_t__ isp_atioq_dma; scalar_t__ isp_result_dma; scalar_t__ isp_rquest_dma; int /*<<< orphan*/ * isp_rquest; TYPE_1__ isp_osinfo; int /*<<< orphan*/ * isp_result; int /*<<< orphan*/ * isp_atioq; int /*<<< orphan*/ * isp_iocb; struct isp_nexus* isp_xflist; } ;
typedef  TYPE_2__ ispsoftc_t ;
struct TYPE_11__ {scalar_t__ isp_scdma; int /*<<< orphan*/ * isp_scratch; } ;

/* Variables and functions */
 TYPE_7__* FUNC0 (TYPE_2__*,int) ; 
 struct isp_fc* FUNC1 (TYPE_2__*,int) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct isp_nexus*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(ispsoftc_t *isp)
{
	int i;

	if (isp->isp_xflist != NULL) {
		FUNC8(isp->isp_xflist, M_DEVBUF);
		isp->isp_xflist = NULL;
	}
	if (isp->isp_osinfo.pcmd_pool != NULL) {
		for (i = 0; i < isp->isp_maxcmds; i++) {
			FUNC5(isp->isp_osinfo.dmat,
			    isp->isp_osinfo.pcmd_pool[i].dmap);
		}
		FUNC8(isp->isp_osinfo.pcmd_pool, M_DEVBUF);
		isp->isp_osinfo.pcmd_pool = NULL;
	}
	if (FUNC3(isp)) {
		for (i = 0; i < isp->isp_nchan; i++) {
			struct isp_fc *fc = FUNC1(isp, i);
			if (FUNC0(isp, i)->isp_scdma != 0) {
				FUNC6(isp->isp_osinfo.scdmat,
				    fc->scmap);
				FUNC0(isp, i)->isp_scdma = 0;
			}
			if (FUNC0(isp, i)->isp_scratch != NULL) {
				FUNC7(isp->isp_osinfo.scdmat,
				    FUNC0(isp, i)->isp_scratch, fc->scmap);
				FUNC0(isp, i)->isp_scratch = NULL;
			}
			while (fc->nexus_free_list) {
				struct isp_nexus *n = fc->nexus_free_list;
				fc->nexus_free_list = n->next;
				FUNC8(n, M_DEVBUF);
			}
		}
		if (isp->isp_iocb_dma != 0) {
			FUNC4(isp->isp_osinfo.scdmat);
			FUNC6(isp->isp_osinfo.iocbdmat,
			    isp->isp_osinfo.iocbmap);
			isp->isp_iocb_dma = 0;
		}
		if (isp->isp_iocb != NULL) {
			FUNC7(isp->isp_osinfo.iocbdmat,
			    isp->isp_iocb, isp->isp_osinfo.iocbmap);
			FUNC4(isp->isp_osinfo.iocbdmat);
		}
	}
#ifdef	ISP_TARGET_MODE
	if (IS_24XX(isp)) {
		if (isp->isp_atioq_dma != 0) {
			bus_dmamap_unload(isp->isp_osinfo.atiodmat,
			    isp->isp_osinfo.atiomap);
			isp->isp_atioq_dma = 0;
		}
		if (isp->isp_atioq != NULL) {
			bus_dmamem_free(isp->isp_osinfo.atiodmat, isp->isp_atioq,
			    isp->isp_osinfo.atiomap);
			bus_dma_tag_destroy(isp->isp_osinfo.atiodmat);
			isp->isp_atioq = NULL;
		}
	}
#endif
	if (isp->isp_result_dma != 0) {
		FUNC6(isp->isp_osinfo.respdmat,
		    isp->isp_osinfo.respmap);
		isp->isp_result_dma = 0;
	}
	if (isp->isp_result != NULL) {
		FUNC7(isp->isp_osinfo.respdmat, isp->isp_result,
		    isp->isp_osinfo.respmap);
		FUNC4(isp->isp_osinfo.respdmat);
		isp->isp_result = NULL;
	}
	if (isp->isp_rquest_dma != 0) {
		FUNC6(isp->isp_osinfo.reqdmat,
		    isp->isp_osinfo.reqmap);
		isp->isp_rquest_dma = 0;
	}
	if (isp->isp_rquest != NULL) {
		FUNC7(isp->isp_osinfo.reqdmat, isp->isp_rquest,
		    isp->isp_osinfo.reqmap);
		FUNC4(isp->isp_osinfo.reqdmat);
		isp->isp_rquest = NULL;
	}
}