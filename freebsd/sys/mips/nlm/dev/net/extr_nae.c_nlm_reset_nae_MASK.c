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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  NAE_RX_CONFIG ; 
 int /*<<< orphan*/  SYS_RESET ; 
 int /*<<< orphan*/  XLP_PCI_CFGREG4 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void
FUNC10(int node)
{
	uint64_t sysbase;
	uint64_t nae_base;
	uint64_t nae_pcibase;
	uint32_t rx_config;
	uint32_t bar0;
	int reset_bit;

	sysbase  = FUNC3(node);
	nae_base = FUNC2(node);
	nae_pcibase = FUNC1(node);

	bar0 = FUNC7(nae_pcibase, XLP_PCI_CFGREG4);

#if BYTE_ORDER == LITTLE_ENDIAN
	if (FUNC5()) {
		uint8_t	val;
		/* membar fixup */
		val = (bar0 >> 24) & 0xff;
		bar0 = (val << 24) | (val << 16) | (val << 8) | val;
	}
#endif

	if (FUNC4())
		reset_bit = 6;
	else
		reset_bit = 9;

	/* Reset NAE */
	FUNC9(sysbase, SYS_RESET, (1 << reset_bit));

	/* XXXJC - 1s delay here may be too high */
	FUNC0(1000000);
	FUNC9(sysbase, SYS_RESET, (0 << reset_bit));
	FUNC0(1000000);

	rx_config = FUNC6(nae_base, NAE_RX_CONFIG);
	FUNC8(nae_pcibase, XLP_PCI_CFGREG4, bar0);
}