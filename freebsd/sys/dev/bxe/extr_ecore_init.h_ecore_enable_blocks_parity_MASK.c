#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct bxe_softc {int dummy; } ;
struct TYPE_3__ {int en_mask; int /*<<< orphan*/  mask_addr; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__* ecore_blocks_parity_data ; 
 int FUNC2 (struct bxe_softc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC4(struct bxe_softc *sc)
{
	int i;

	for (i = 0; i < FUNC0(ecore_blocks_parity_data); i++) {
		uint32_t reg_mask = FUNC2(sc, i);

		if (reg_mask)
			FUNC1(sc, ecore_blocks_parity_data[i].mask_addr,
				ecore_blocks_parity_data[i].en_mask & reg_mask);
	}

	/* Enable MCP parity attentions */
	FUNC3(sc, TRUE);
}