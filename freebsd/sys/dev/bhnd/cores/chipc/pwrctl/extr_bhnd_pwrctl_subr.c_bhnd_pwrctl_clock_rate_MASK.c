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
typedef  int uint32_t ;

/* Variables and functions */
 int CHIPC_CLOCK_BASE1 ; 
 int CHIPC_CLOCK_BASE2 ; 
 int /*<<< orphan*/  CHIPC_CN_N1 ; 
 int /*<<< orphan*/  CHIPC_CN_N2 ; 
 int CHIPC_F5_BIAS ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CHIPC_M1 ; 
 int /*<<< orphan*/  CHIPC_M2 ; 
 int /*<<< orphan*/  CHIPC_M3 ; 
 int /*<<< orphan*/  CHIPC_MC ; 
#define  CHIPC_MC_BYPASS 139 
#define  CHIPC_MC_M1 138 
#define  CHIPC_MC_M1M2 137 
#define  CHIPC_MC_M1M2M3 136 
#define  CHIPC_MC_M1M3 135 
#define  CHIPC_PLL_TYPE1 134 
#define  CHIPC_PLL_TYPE2 133 
#define  CHIPC_PLL_TYPE3 132 
#define  CHIPC_PLL_TYPE4 131 
#define  CHIPC_PLL_TYPE5 130 
#define  CHIPC_PLL_TYPE6 129 
#define  CHIPC_PLL_TYPE7 128 
 int CHIPC_T2M2_BIAS ; 
 int CHIPC_T2MC_M1BYP ; 
 int CHIPC_T2MC_M2BYP ; 
 int CHIPC_T2MC_M3BYP ; 
 int CHIPC_T2_BIAS ; 
 int CHIPC_T6_M0 ; 
 int CHIPC_T6_M1 ; 
 int CHIPC_T6_MMASK ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

uint32_t
FUNC5(uint32_t pll_type, uint32_t n, uint32_t m)
{
	uint32_t clk_base;
	uint32_t n1, n2, clock, m1, m2, m3, mc;

	n1 = FUNC0(n, CHIPC_CN_N1);
	n2 = FUNC0(n, CHIPC_CN_N2);

	switch (pll_type) {
	case CHIPC_PLL_TYPE1:
	case CHIPC_PLL_TYPE3:
	case CHIPC_PLL_TYPE4:
	case CHIPC_PLL_TYPE7:
		n1 = FUNC2(n1);
		n2 += CHIPC_F5_BIAS;
		break;

	case CHIPC_PLL_TYPE2:
		n1 += CHIPC_T2_BIAS;
		n2 += CHIPC_T2_BIAS;
		FUNC1(n1 >= 2 && n1 <= 7, ("invalid n1 value"));
		FUNC1(n2 >= 5 && n2 <= 23, ("invalid n2 value"));
		break;
		
	case CHIPC_PLL_TYPE5:
		return (100000000);

	case CHIPC_PLL_TYPE6:
		if (m & CHIPC_T6_MMASK)
			return (CHIPC_T6_M1);
		else
			return (CHIPC_T6_M0);

	default:
		FUNC4("unsupported PLL type %u\n", pll_type);
		return (0);
	}

	/* PLL types 3 and 7 use BASE2 (25Mhz) */
	if (pll_type == CHIPC_PLL_TYPE3 || pll_type == CHIPC_PLL_TYPE7) {
		clk_base = CHIPC_CLOCK_BASE2;
	} else {
		clk_base = CHIPC_CLOCK_BASE1;
	}

	clock = clk_base * n1 * n2;

	if (clock == 0)
		return (0);

	m1 = FUNC0(m, CHIPC_M1);
	m2 = FUNC0(m, CHIPC_M2);
	m3 = FUNC0(m, CHIPC_M3);
	mc = FUNC0(m, CHIPC_MC);

	switch (pll_type) {
	case CHIPC_PLL_TYPE1:
	case CHIPC_PLL_TYPE3:
	case CHIPC_PLL_TYPE4:
	case CHIPC_PLL_TYPE7:
		m1 = FUNC2(m1);
		if (pll_type == CHIPC_PLL_TYPE1 || pll_type == CHIPC_PLL_TYPE3)
			m2 += CHIPC_F5_BIAS;
		else
			m2 = FUNC2(m2);

		m3 = FUNC2(m3);

		switch (mc) {
		case CHIPC_MC_BYPASS:	
			return (clock);
		case CHIPC_MC_M1:	
			return (clock / m1);
		case CHIPC_MC_M1M2:	
			return (clock / (m1 * m2));
		case CHIPC_MC_M1M2M3:
			return (clock / (m1 * m2 * m3));
		case CHIPC_MC_M1M3:
			return (clock / (m1 * m3));
		default:
			FUNC4("unsupported pwrctl mc %#x\n", mc);
			return (0);
		}
	case CHIPC_PLL_TYPE2:
		m1 += CHIPC_T2_BIAS;
		m2 += CHIPC_T2M2_BIAS;
		m3 += CHIPC_T2_BIAS;
		FUNC1(m1 >= 2 && m1 <= 7, ("invalid m1 value"));
		FUNC1(m2 >= 3 && m2 <= 10, ("invalid m2 value"));
		FUNC1(m3 >= 2 && m3 <= 7, ("invalid m3 value"));

		if ((mc & CHIPC_T2MC_M1BYP) == 0)
			clock /= m1;
		if ((mc & CHIPC_T2MC_M2BYP) == 0)
			clock /= m2;
		if ((mc & CHIPC_T2MC_M3BYP) == 0)
			clock /= m3;

		return (clock);
	default:
		FUNC3("unhandled PLL type %u\n", pll_type);
	}
}