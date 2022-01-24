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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  NAE_TX_CONFIG ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void
FUNC3(uint64_t nae_base)
{
	uint32_t tx_cfg;

	tx_cfg = FUNC1(nae_base, NAE_TX_CONFIG);
	if (!FUNC0()) {
		FUNC2(nae_base, NAE_TX_CONFIG,
		    tx_cfg	|
		    0x1		|	/* tx enable */
		    0x2		|	/* tx ace */
		    0x4		|	/* tx compatible */
		    (1 << 3));
	} else {
		FUNC2(nae_base, NAE_TX_CONFIG,
		    tx_cfg	|
		    0x1		|	/* tx enable */
		    0x2);		/* tx ace */
	}
}