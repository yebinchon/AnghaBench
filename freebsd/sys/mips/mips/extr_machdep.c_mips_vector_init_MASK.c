#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 scalar_t__ MIPS_CACHE_ERR_EXC_VEC ; 
 scalar_t__ MIPS_GEN_EXC_VEC ; 
 int MIPS_SR_BEV ; 
 scalar_t__ MIPS_UTLB_MISS_EXC_VEC ; 
 scalar_t__ MIPS_XTLB_MISS_EXC_VEC ; 
 int MipsCache ; 
 int MipsCacheEnd ; 
 int MipsException ; 
 int MipsExceptionEnd ; 
 int MipsTLBMiss ; 
 int MipsTLBMissEnd ; 
 int MipsWaitEnd ; 
 int MipsWaitStart ; 
 int /*<<< orphan*/  FUNC0 (int,void*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void
FUNC7(void)
{
	/*
	 * Make sure that the Wait region logic is not been 
	 * changed
	 */
	if (MipsWaitEnd - MipsWaitStart != 16)
		FUNC5("startup: MIPS wait region not correct");
	/*
	 * Copy down exception vector code.
	 */
	if (MipsTLBMissEnd - MipsTLBMiss > 0x80)
		FUNC5("startup: UTLB code too large");

	if (MipsCacheEnd - MipsCache > 0x80)
		FUNC5("startup: Cache error code too large");

	FUNC0(MipsTLBMiss, (void *)MIPS_UTLB_MISS_EXC_VEC,
	      MipsTLBMissEnd - MipsTLBMiss);

	/*
	 * XXXRW: Why don't we install the XTLB handler for all 64-bit
	 * architectures?
	 */
#if defined(__mips_n64) || defined(CPU_RMI) || defined(CPU_NLM) || defined(CPU_BERI)
/* Fake, but sufficient, for the 32-bit with 64-bit hardware addresses  */
	bcopy(MipsTLBMiss, (void *)MIPS_XTLB_MISS_EXC_VEC,
	      MipsTLBMissEnd - MipsTLBMiss);
#endif

	FUNC0(MipsException, (void *)MIPS_GEN_EXC_VEC,
	      MipsExceptionEnd - MipsException);

	FUNC0(MipsCache, (void *)MIPS_CACHE_ERR_EXC_VEC,
	      MipsCacheEnd - MipsCache);

	/*
	 * Clear out the I and D caches.
	 */
	FUNC2();
	FUNC1();

	/* 
	 * Mask all interrupts. Each interrupt will be enabled
	 * when handler is installed for it
	 */
	FUNC6(0);

	/* Clear BEV in SR so we start handling our own exceptions */
	FUNC4(FUNC3() & ~MIPS_SR_BEV);
}