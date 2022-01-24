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
typedef  scalar_t__ vm_offset_t ;
typedef  int uint64_t ;
typedef  scalar_t__ __register_t ;

/* Variables and functions */
 scalar_t__ CFE_EPTSEAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bcm_platform_data ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  edata ; 
 int /*<<< orphan*/  end ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,int) ; 

void
FUNC12(__register_t a0, __register_t a1, __register_t a2,
	       __register_t a3)
{
	vm_offset_t 		 kernend;
	uint64_t		 platform_counter_freq;
	int			 error;

	/* clear the BSS and SBSS segments */
	kernend = (vm_offset_t)&end;
	FUNC5(&edata, 0, kernend - (vm_offset_t)(&edata));

	FUNC8();

	/* Initialize pcpu stuff */
	FUNC7();

#ifdef CFE
	/*
	 * Initialize CFE firmware trampolines. This must be done
	 * before any CFE APIs are called, including writing
	 * to the CFE console.
	 *
	 * CFE passes the following values in registers:
	 * a0: firmware handle
	 * a2: firmware entry point
	 * a3: entry point seal
	 */
	if (a3 == CFE_EPTSEAL)
		cfe_init(a0, a2);
#endif

	/* Init BCM platform data */
	if ((error = FUNC2(&bcm_platform_data)))
		FUNC11("bcm_init_platform_data() failed: %d", error);

	platform_counter_freq = FUNC0(FUNC1());

	/* CP0 ticks every two cycles */
	FUNC9(platform_counter_freq / 2);

	FUNC4();

	FUNC6();

	FUNC10(platform_counter_freq, 1);
}