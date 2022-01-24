#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int phandle_t ;
typedef  int /*<<< orphan*/  bus_space_tag_t ;
typedef  int /*<<< orphan*/  bus_space_handle_t ;
struct TYPE_2__ {int ocd_data; int /*<<< orphan*/ * ocd_str; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTK_DEFAULT_BASE ; 
 int /*<<< orphan*/  MTK_DEFAULT_SIZE ; 
 int /*<<< orphan*/  MTK_MT7621_BASE ; 
 int /*<<< orphan*/  MTK_RT2880_BASE ; 
#define  MTK_SOC_MT7620A 140 
#define  MTK_SOC_MT7620N 139 
#define  MTK_SOC_MT7621 138 
#define  MTK_SOC_MT7628 137 
#define  MTK_SOC_MT7688 136 
#define  MTK_SOC_RT2880 135 
#define  MTK_SOC_RT3050 134 
#define  MTK_SOC_RT3052 133 
#define  MTK_SOC_RT3350 132 
#define  MTK_SOC_RT3352 131 
#define  MTK_SOC_RT3662 130 
#define  MTK_SOC_RT3883 129 
#define  MTK_SOC_RT5350 128 
 int MTK_SOC_UNKNOWN ; 
 int MTK_UARTDIV_2 ; 
 int MTK_UARTDIV_3 ; 
 int MTK_UART_CLK_40MHZ ; 
 int MTK_UART_CLK_50MHZ ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  SYSCTL_CHIPID0_3 ; 
 int /*<<< orphan*/  SYSCTL_CHIPID4_7 ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* compat_data ; 
 int /*<<< orphan*/  fdtbus_bs_tag ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* mtk_soc_chipid0_3 ; 
 void* mtk_soc_chipid4_7 ; 
 int mtk_soc_cpuclk ; 
 int mtk_soc_socid ; 
 int mtk_soc_timerclk ; 
 int mtk_soc_uartclk ; 
 scalar_t__ FUNC12 (int,int /*<<< orphan*/ *) ; 

void
FUNC13(void)
{
	bus_space_tag_t bst;
	bus_space_handle_t bsh;
	uint32_t base;
	phandle_t node;
	int i;

	if ((node = FUNC0("/")) == -1)
		return;

	for (i = 0; compat_data[i].ocd_str != NULL; i++) {
		if (FUNC12(node, compat_data[i].ocd_str)) {
			mtk_soc_socid = compat_data[i].ocd_data;
			break;
		}
	}

	if (mtk_soc_socid == MTK_SOC_UNKNOWN) {
		/* We don't know the SoC, so we don't know how to get clocks */
		return;
	}

	bst = fdtbus_bs_tag;
	if (mtk_soc_socid == MTK_SOC_RT2880)
		base = MTK_RT2880_BASE;
	else if (mtk_soc_socid == MTK_SOC_MT7621)
		base = MTK_MT7621_BASE;
	else
		base = MTK_DEFAULT_BASE;

	if (FUNC1(bst, base, MTK_DEFAULT_SIZE, 0, &bsh))
		return;

	/* Get our CHIP ID */
	mtk_soc_chipid0_3 = FUNC2(bst, bsh, SYSCTL_CHIPID0_3);
	mtk_soc_chipid4_7 = FUNC2(bst, bsh, SYSCTL_CHIPID4_7);

	/* First, figure out the CPU clock */
	switch (mtk_soc_socid) {
	case MTK_SOC_RT2880:
		mtk_soc_cpuclk = FUNC7(bst, bsh);
		break;
	case MTK_SOC_RT3050:  /* fallthrough */
	case MTK_SOC_RT3052:
	case MTK_SOC_RT3350:
		mtk_soc_cpuclk = FUNC8(bst, bsh);
		break;
	case MTK_SOC_RT3352:
		mtk_soc_cpuclk = FUNC9(bst, bsh);
		break;
	case MTK_SOC_RT3662:  /* fallthrough */
	case MTK_SOC_RT3883:
		mtk_soc_cpuclk = FUNC10(bst, bsh);
		break;
	case MTK_SOC_RT5350:
		mtk_soc_cpuclk = FUNC11(bst, bsh);
		break;
	case MTK_SOC_MT7620A: /* fallthrough */
	case MTK_SOC_MT7620N:
		mtk_soc_cpuclk = FUNC4(bst, bsh);
		break;
	case MTK_SOC_MT7621:
		mtk_soc_cpuclk = FUNC5(bst, bsh);
		break;
	case MTK_SOC_MT7628:  /* fallthrough */
	case MTK_SOC_MT7688:
		mtk_soc_cpuclk = FUNC6(bst, bsh);
		break;
	default:
		/* We don't know the SoC, so we can't find the CPU clock */
		break;
	}

	/* Now figure out the timer clock */
	if (mtk_soc_socid == MTK_SOC_MT7621) {
#ifdef notyet
		/* 
		 * We use the GIC timer for timing source and its clock freq is
		 * the same as the CPU's clock freq
		 */
		mtk_soc_timerclk = mtk_soc_cpuclk;
#else
		/*
		 * When GIC timer and MIPS timer are ready to co-exist and
		 * GIC timer is actually implemented, we need to switch to it.
		 * Until then we use a fake GIC timer, which is actually a
		 * normal MIPS ticker, so the timer clock is half the CPU clock
		 */
		mtk_soc_timerclk = mtk_soc_cpuclk / 2;
#endif
	} else {
		/*
		 * We use the MIPS ticker for the rest for now, so
		 * the CPU clock is divided by 2
		 */
		mtk_soc_timerclk = mtk_soc_cpuclk / 2;
	}

	switch (mtk_soc_socid) {
	case MTK_SOC_RT2880:
		mtk_soc_uartclk = mtk_soc_cpuclk / MTK_UARTDIV_2;
		break;
	case MTK_SOC_RT3350:  /* fallthrough */
	case MTK_SOC_RT3050:  /* fallthrough */
	case MTK_SOC_RT3052:
		/* UART clock is CPU clock / 3 */
		mtk_soc_uartclk = mtk_soc_cpuclk / MTK_UARTDIV_3;
		break;
	case MTK_SOC_RT3352:  /* fallthrough */
	case MTK_SOC_RT3662:  /* fallthrough */
	case MTK_SOC_RT3883:  /* fallthrough */
	case MTK_SOC_RT5350:  /* fallthrough */
	case MTK_SOC_MT7620A: /* fallthrough */
	case MTK_SOC_MT7620N: /* fallthrough */
	case MTK_SOC_MT7628:  /* fallthrough */
	case MTK_SOC_MT7688:
		/* UART clock is always 40MHz */
		mtk_soc_uartclk = MTK_UART_CLK_40MHZ;
		break;
	case MTK_SOC_MT7621:
		/* UART clock is always 50MHz */
		mtk_soc_uartclk = MTK_UART_CLK_50MHZ;
		break;
	default:
		/* We don't know the SoC, so we don't know the UART clock */
		break;
	}

	FUNC3(bst, bsh, MTK_DEFAULT_SIZE);
}