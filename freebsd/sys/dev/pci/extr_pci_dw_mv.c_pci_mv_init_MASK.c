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
struct pci_mv_softc {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DW_MSI_INTR0_MASK ; 
 int INT_A_ASSERT_MASK ; 
 int INT_B_ASSERT_MASK ; 
 int INT_C_ASSERT_MASK ; 
 int INT_D_ASSERT_MASK ; 
 int /*<<< orphan*/  MV_ARCACHE_TRC_REG ; 
 int /*<<< orphan*/  MV_ARUSER_REG ; 
 int /*<<< orphan*/  MV_AWCACHE_TRC_REG ; 
 int /*<<< orphan*/  MV_AWUSER_REG ; 
 int /*<<< orphan*/  MV_ERR_INT_MASK ; 
 int /*<<< orphan*/  MV_GLOBAL_CONTROL_REG ; 
 int /*<<< orphan*/  MV_INT_CAUSE1 ; 
 int /*<<< orphan*/  MV_INT_CAUSE2 ; 
 int /*<<< orphan*/  MV_INT_MASK1 ; 
 int /*<<< orphan*/  MV_INT_MASK2 ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct pci_mv_softc *sc)
{
	uint32_t reg;


	/* Set device configuration to RC */
	reg = FUNC0(sc->dev, MV_GLOBAL_CONTROL_REG);
	reg &= ~0x000000F0;
	reg |= 0x000000040;
	FUNC1(sc->dev, MV_GLOBAL_CONTROL_REG, reg);

	/* AxCache master transaction attribures */
	FUNC1(sc->dev, MV_ARCACHE_TRC_REG, 0x3511);
	FUNC1(sc->dev, MV_AWCACHE_TRC_REG, 0x5311);

	/* AxDomain master transaction attribures */
	FUNC1(sc->dev, MV_ARUSER_REG, 0x0002);
	FUNC1(sc->dev, MV_AWUSER_REG, 0x0002);

	/* Enable all INTx interrupt (virtuual) pins */
	reg = FUNC0(sc->dev, MV_INT_MASK1);
	reg |= INT_A_ASSERT_MASK | INT_B_ASSERT_MASK |
	       INT_C_ASSERT_MASK | INT_D_ASSERT_MASK;
	FUNC1(sc->dev, MV_INT_MASK1, reg);

	/* Enable local interrupts */
	FUNC1(sc->dev, DW_MSI_INTR0_MASK, 0xFFFFFFFF);
	FUNC1(sc->dev, MV_INT_MASK1, 0xFFFFFFFF);
	FUNC1(sc->dev, MV_INT_MASK2, 0xFFFFFFFF);
	FUNC1(sc->dev, MV_INT_CAUSE1, 0xFFFFFFFF);
	FUNC1(sc->dev, MV_INT_CAUSE2, 0xFFFFFFFF);

	/* Errors have own interrupt, not yet populated in DTt */
	FUNC1(sc->dev, MV_ERR_INT_MASK, 0);
}