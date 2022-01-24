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
typedef  void* uint32_t ;
typedef  int register_t ;
typedef  int /*<<< orphan*/  prop ;
typedef  int /*<<< orphan*/  platform_t ;
typedef  scalar_t__ phandle_t ;
typedef  void* pcell_t ;
typedef  unsigned long long int32_t ;
typedef  int /*<<< orphan*/  cell_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  arr ;

/* Variables and functions */
 int /*<<< orphan*/  LPCR_HVICE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__,char*,void**,int) ; 
 int FUNC2 (scalar_t__,char*,char*,int) ; 
 int FUNC3 (scalar_t__,char*) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  OPAL_REINIT_CPUS ; 
 int PPC_FEATURE2_ARCH_3_00 ; 
 int PSL_DR ; 
 int PSL_IR ; 
 void* SLBV_L ; 
 int /*<<< orphan*/  SPR_LPCR ; 
 int /*<<< orphan*/  SPR_LPID ; 
 int /*<<< orphan*/  SPR_PIR ; 
 int cpu_features2 ; 
 int /*<<< orphan*/ * cpu_idle_hook ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  lpcr ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 void* moea64_large_page_shift ; 
 unsigned long long moea64_large_page_size ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* n_slbs ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  powernv_boot_pir ; 
 int /*<<< orphan*/ * powernv_cpu_idle ; 
 int /*<<< orphan*/  FUNC13 () ; 
 scalar_t__ FUNC14 (char*,char*) ; 

__attribute__((used)) static int
FUNC15(platform_t plat)
{
	uint32_t nptlp, shift = 0, slb_encoding = 0;
	int32_t lp_size, lp_encoding;
	char buf[255];
	pcell_t prop;
	phandle_t cpu;
	int res, len, idx;
	register_t msr;

	/* Ping OPAL again just to make sure */
	FUNC11();

#if BYTE_ORDER == LITTLE_ENDIAN
	FUNC10(OPAL_REINIT_CPUS, 2 /* Little endian */);
#else
	opal_call(OPAL_REINIT_CPUS, 1 /* Big endian */);
#endif

       if (cpu_idle_hook == NULL)
                cpu_idle_hook = powernv_cpu_idle;

	powernv_boot_pir = FUNC7(SPR_PIR);

	/* LPID must not be altered when PSL_DR or PSL_IR is set */
	msr = FUNC6();
	FUNC8(msr & ~(PSL_DR | PSL_IR));

	/* Direct interrupts to SRR instead of HSRR and reset LPCR otherwise */
	FUNC9(SPR_LPID, 0);
	FUNC5();

	if (cpu_features2 & PPC_FEATURE2_ARCH_3_00)
		lpcr |= LPCR_HVICE;

	FUNC9(SPR_LPCR, lpcr);
	FUNC5();

	FUNC8(msr);

	FUNC13();

	/* Set SLB count from device tree */
	cpu = FUNC4(0);
	cpu = FUNC0(cpu);
	while (cpu != 0) {
		res = FUNC2(cpu, "name", buf, sizeof(buf));
		if (res > 0 && FUNC14(buf, "cpus") == 0)
			break;
		cpu = FUNC4(cpu);
	}
	if (cpu == 0)
		goto out;

	cpu = FUNC0(cpu);
	while (cpu != 0) {
		res = FUNC2(cpu, "device_type", buf, sizeof(buf));
		if (res > 0 && FUNC14(buf, "cpu") == 0)
			break;
		cpu = FUNC4(cpu);
	}
	if (cpu == 0)
		goto out;

	res = FUNC1(cpu, "ibm,slb-size", &prop, sizeof(prop));
	if (res > 0)
		n_slbs = prop;

	/*
	 * Scan the large page size property for PAPR compatible machines.
	 * See PAPR D.5 Changes to Section 5.1.4, 'CPU Node Properties'
	 * for the encoding of the property.
	 */

	len = FUNC3(cpu, "ibm,segment-page-sizes");
	if (len > 0) {
		/*
		 * We have to use a variable length array on the stack
		 * since we have very limited stack space.
		 */
		pcell_t arr[len/sizeof(cell_t)];
		res = FUNC1(cpu, "ibm,segment-page-sizes", arr,
		    sizeof(arr));
		len /= 4;
		idx = 0;
		while (len > 0) {
			shift = arr[idx];
			slb_encoding = arr[idx + 1];
			nptlp = arr[idx + 2];
			idx += 3;
			len -= 3;
			while (len > 0 && nptlp) {
				lp_size = arr[idx];
				lp_encoding = arr[idx+1];
				if (slb_encoding == SLBV_L && lp_encoding == 0)
					break;

				idx += 2;
				len -= 2;
				nptlp--;
			}
			if (nptlp && slb_encoding == SLBV_L && lp_encoding == 0)
				break;
		}

		if (len == 0)
			FUNC12("Standard large pages (SLB[L] = 1, PTE[LP] = 0) "
			    "not supported by this system.");

		moea64_large_page_shift = shift;
		moea64_large_page_size = 1ULL << lp_size;
	}

out:
	return (0);
}