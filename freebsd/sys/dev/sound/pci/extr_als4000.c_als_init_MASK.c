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
typedef  int u_int32_t ;
struct sc_info {int dummy; } ;

/* Variables and functions */
 int ALS_GCR_DMA_EMULATION ; 
 int ALS_GCR_MISC ; 
 int /*<<< orphan*/  ALS_SB16_CONFIG ; 
 int /*<<< orphan*/  ALS_SB16_DMA_SETUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct sc_info*) ; 
 int FUNC2 (struct sc_info*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sc_info*,int,int) ; 
 int FUNC4 (struct sc_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sc_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 

__attribute__((used)) static int
FUNC7(struct sc_info *sc)
{
	u_int32_t i, v;

	/* Reset Chip */
	if (FUNC1(sc)) {
		return 1;
	}

	/* Enable write on DMA_SETUP register */
	v = FUNC4(sc, ALS_SB16_CONFIG);
	FUNC5(sc, ALS_SB16_CONFIG, v | 0x80);

	/* Select DMA0 */
	FUNC5(sc, ALS_SB16_DMA_SETUP, 0x01);

	/* Disable write on DMA_SETUP register */
	FUNC5(sc, ALS_SB16_CONFIG, v & 0x7f);

	/* Enable interrupts */
	v  = FUNC2(sc, ALS_GCR_MISC);
	FUNC3(sc, ALS_GCR_MISC, v | 0x28000);

	/* Black out GCR DMA registers */
	for (i = 0x91; i <= 0x96; i++) {
		FUNC3(sc, i, 0);
	}

	/* Emulation mode */
	v = FUNC2(sc, ALS_GCR_DMA_EMULATION);
	FUNC3(sc, ALS_GCR_DMA_EMULATION, v);
	FUNC0(FUNC6("GCR_DMA_EMULATION 0x%08x\n", v));
	return 0;
}