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
struct bfe_softc {int bfe_phyaddr; } ;

/* Variables and functions */
 int BFE_EMAC_INT_MII ; 
 int /*<<< orphan*/  BFE_EMAC_ISTAT ; 
 int /*<<< orphan*/  BFE_MDIO_DATA ; 
 int BFE_MDIO_DATA_DATA ; 
 int BFE_MDIO_OP_READ ; 
 int BFE_MDIO_OP_SHIFT ; 
 int BFE_MDIO_PMD_SHIFT ; 
 int BFE_MDIO_RA_SHIFT ; 
 int BFE_MDIO_SB_START ; 
 int BFE_MDIO_TA_SHIFT ; 
 int BFE_MDIO_TA_VALID ; 
 int FUNC0 (struct bfe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bfe_softc*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct bfe_softc*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct bfe_softc *sc, u_int32_t reg, u_int32_t *val)
{
	int err;

	/* Clear MII ISR */
	FUNC1(sc, BFE_EMAC_ISTAT, BFE_EMAC_INT_MII);
	FUNC1(sc, BFE_MDIO_DATA, (BFE_MDIO_SB_START |
				(BFE_MDIO_OP_READ << BFE_MDIO_OP_SHIFT) |
				(sc->bfe_phyaddr << BFE_MDIO_PMD_SHIFT) |
				(reg << BFE_MDIO_RA_SHIFT) |
				(BFE_MDIO_TA_VALID << BFE_MDIO_TA_SHIFT)));
	err = FUNC2(sc, BFE_EMAC_ISTAT, BFE_EMAC_INT_MII, 100, 0);
	*val = FUNC0(sc, BFE_MDIO_DATA) & BFE_MDIO_DATA_DATA;

	return (err);
}