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
typedef  int u_short ;
typedef  int /*<<< orphan*/  u_int32_t ;
typedef  int /*<<< orphan*/  u_char ;

/* Variables and functions */
 int /*<<< orphan*/  BIOS_RESET ; 
 int /*<<< orphan*/  BIOS_WARM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  CMOS_DATA ; 
 int /*<<< orphan*/  CMOS_REG ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int DPCPU_SIZE ; 
 int /*<<< orphan*/  MTX_SPIN ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  TRAMP_COPYOUT_SZ ; 
 int /*<<< orphan*/  TRAMP_STACK_SZ ; 
 scalar_t__ WARMBOOT_OFF ; 
 scalar_t__ WARMBOOT_SEG ; 
 int WARMBOOT_TARGET ; 
 int /*<<< orphan*/  all_cpus ; 
 int /*<<< orphan*/  ap_boot_mtx ; 
 void* ap_copyout_buf ; 
 void* ap_tramp_stack_base ; 
 int bootAP ; 
 char* bootSTK ; 
 int boot_address ; 
 char** bootstacks ; 
 char FUNC3 () ; 
 int* cpu_apic_ids ; 
 void* dpcpu ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int,int) ; 
 int kstack_pages ; 
 int mp_naps ; 
 int mp_ncpus ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 void* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 

__attribute__((used)) static int
FUNC14(void)
{
	u_char mpbiosreason;
	u_int32_t mpbioswarmvec;
	int apic_id, cpu;

	FUNC7(&ap_boot_mtx, "ap boot", NULL, MTX_SPIN);

	FUNC10(true);

	/* install the AP 1st level boot code */
	FUNC5();

	/* save the current value of the warm-start vector */
	mpbioswarmvec = *((u_int32_t *) WARMBOOT_OFF);
	FUNC8(CMOS_REG, BIOS_RESET);
	mpbiosreason = FUNC4(CMOS_DATA);

	/* take advantage of the P==V mapping for PTD[0] for AP boot */

	/* start each AP */
	for (cpu = 1; cpu < mp_ncpus; cpu++) {
		apic_id = cpu_apic_ids[cpu];

		/* allocate and set up a boot stack data page */
		bootstacks[cpu] = (char *)FUNC6(kstack_pages * PAGE_SIZE,
		    M_WAITOK | M_ZERO);
		dpcpu = (void *)FUNC6(DPCPU_SIZE, M_WAITOK | M_ZERO);
		/* setup a vector to our boot code */
		*((volatile u_short *) WARMBOOT_OFF) = WARMBOOT_TARGET;
		*((volatile u_short *) WARMBOOT_SEG) = (boot_address >> 4);
		FUNC8(CMOS_REG, BIOS_RESET);
		FUNC8(CMOS_DATA, BIOS_WARM);	/* 'warm-start' */

		bootSTK = (char *)bootstacks[cpu] + kstack_pages *
		    PAGE_SIZE - 4;
		bootAP = cpu;

		ap_tramp_stack_base = FUNC11(TRAMP_STACK_SZ, M_NOWAIT);
		ap_copyout_buf = FUNC11(TRAMP_COPYOUT_SZ, M_NOWAIT);

		/* attempt to start the Application Processor */
		FUNC0(99);	/* setup checkpoints */
		if (!FUNC13(apic_id)) {
			FUNC12("AP #%d (PHY# %d) failed!\n", cpu, apic_id);
			FUNC1("trace");	/* show checkpoints */
			/* better panic as the AP may be running loose */
			FUNC12("panic y/n? [y] ");
			if (FUNC3() != 'n')
				FUNC9("bye-bye");
		}
		FUNC1("trace");		/* show checkpoints */

		FUNC2(cpu, &all_cpus);	/* record AP in CPU map */
	}

	FUNC10(false);

	/* restore the warmstart vector */
	*(u_int32_t *) WARMBOOT_OFF = mpbioswarmvec;

	FUNC8(CMOS_REG, BIOS_RESET);
	FUNC8(CMOS_DATA, mpbiosreason);

	/* number of APs actually started */
	return mp_naps;
}