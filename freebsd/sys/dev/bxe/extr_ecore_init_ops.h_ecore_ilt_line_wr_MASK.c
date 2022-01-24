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
typedef  scalar_t__ uint32_t ;
struct bxe_softc {int dummy; } ;
typedef  int /*<<< orphan*/  ecore_dma_addr_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ PXP2_REG_RQ_ONCHIP_AT ; 
 scalar_t__ PXP2_REG_RQ_ONCHIP_AT_B0 ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct bxe_softc *sc, int abs_idx,
			      ecore_dma_addr_t page_mapping)
{
	uint32_t reg;

	if (FUNC0(sc))
		reg = PXP2_REG_RQ_ONCHIP_AT + abs_idx*8;
	else
		reg = PXP2_REG_RQ_ONCHIP_AT_B0 + abs_idx*8;

	FUNC3(sc, reg, FUNC1(page_mapping), FUNC2(page_mapping));
}