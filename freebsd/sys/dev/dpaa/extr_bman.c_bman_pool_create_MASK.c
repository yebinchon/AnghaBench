#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  void* uint16_t ;
typedef  int /*<<< orphan*/  t_VirtToPhys ;
typedef  int /*<<< orphan*/  t_PutBufFunction ;
typedef  int /*<<< orphan*/  t_PhysToVirt ;
typedef  int /*<<< orphan*/ * t_Handle ;
typedef  int /*<<< orphan*/  t_GetBufFunction ;
struct TYPE_5__ {void* bufferSize; int /*<<< orphan*/ * f_VirtToPhys; int /*<<< orphan*/ * f_PhysToVirt; int /*<<< orphan*/ * f_PutBuf; int /*<<< orphan*/ * f_GetBuf; int /*<<< orphan*/ * h_BufferPool; } ;
struct TYPE_6__ {TYPE_1__ bufferPoolInfo; void* numOfBuffers; int /*<<< orphan*/ * h_App; int /*<<< orphan*/ * h_BmPortal; int /*<<< orphan*/  h_Bm; } ;
typedef  TYPE_2__ t_BmPoolParam ;
typedef  int /*<<< orphan*/  t_BmDepletionCallback ;
struct bman_softc {int /*<<< orphan*/ * sc_bpool_cpu; int /*<<< orphan*/  sc_bh; } ;
typedef  int /*<<< orphan*/  bpp ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,void*,void*) ; 
 size_t BM_POOL_DEP_THRESH_HW_ENTRY ; 
 size_t BM_POOL_DEP_THRESH_HW_EXIT ; 
 size_t BM_POOL_DEP_THRESH_SW_ENTRY ; 
 size_t BM_POOL_DEP_THRESH_SW_EXIT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 size_t FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int E_OK ; 
 int MAX_DEPLETION_THRESHOLDS ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (struct bman_softc*) ; 
 struct bman_softc* bman_sc ; 
 int /*<<< orphan*/  cpuid ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 

t_Handle
FUNC12(uint8_t *bpid, uint16_t bufferSize, uint16_t maxBuffers,
    uint16_t minBuffers, uint16_t allocBuffers, t_GetBufFunction *f_GetBuf,
    t_PutBufFunction *f_PutBuf, uint32_t dep_sw_entry, uint32_t dep_sw_exit,
    uint32_t dep_hw_entry, uint32_t dep_hw_exit,
    t_BmDepletionCallback *f_Depletion, t_Handle h_BufferPool,
    t_PhysToVirt *f_PhysToVirt, t_VirtToPhys *f_VirtToPhys)
{
	uint32_t thresholds[MAX_DEPLETION_THRESHOLDS];
	struct bman_softc *sc;
	t_Handle pool, portal;
	t_BmPoolParam bpp;
	int error;

	sc = bman_sc;
	pool = NULL;

	FUNC10();

	portal = FUNC8(sc);
	if (portal == NULL)
		goto err;

	FUNC9(&bpp, 0, sizeof(bpp));
	bpp.h_Bm = sc->sc_bh;
	bpp.h_BmPortal = portal;
	bpp.h_App = h_BufferPool;
	bpp.numOfBuffers = allocBuffers;

	bpp.bufferPoolInfo.h_BufferPool = h_BufferPool;
	bpp.bufferPoolInfo.f_GetBuf = f_GetBuf;
	bpp.bufferPoolInfo.f_PutBuf = f_PutBuf;
	bpp.bufferPoolInfo.f_PhysToVirt = f_PhysToVirt;
	bpp.bufferPoolInfo.f_VirtToPhys = f_VirtToPhys;
	bpp.bufferPoolInfo.bufferSize = bufferSize;

	pool = FUNC0(&bpp);
	if (pool == NULL)
		goto err;

	/*
	 * Buffer context must be disabled on FreeBSD
	 * as it could cause memory corruption.
	 */
	FUNC1(pool, 0);

	if (minBuffers != 0 || maxBuffers != 0) {
		error = FUNC3(pool, maxBuffers, minBuffers);
		if (error != E_OK)
			goto err;
	}

	if (f_Depletion != NULL) {
		thresholds[BM_POOL_DEP_THRESH_SW_ENTRY] = dep_sw_entry;
		thresholds[BM_POOL_DEP_THRESH_SW_EXIT] = dep_sw_exit;
		thresholds[BM_POOL_DEP_THRESH_HW_ENTRY] = dep_hw_entry;
		thresholds[BM_POOL_DEP_THRESH_HW_EXIT] = dep_hw_exit;
		error = FUNC2(pool, f_Depletion, thresholds);
		if (error != E_OK)
			goto err;
	}

	error = FUNC6(pool);
	if (error != E_OK)
		goto err;

	*bpid = FUNC5(pool);
	sc->sc_bpool_cpu[*bpid] = FUNC7(cpuid);

	FUNC11();

	return (pool);

err:
	if (pool != NULL)
		FUNC4(pool);

	FUNC11();

	return (NULL);
}