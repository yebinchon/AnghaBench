#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct mii_data {int /*<<< orphan*/  mii_media_active; } ;
struct TYPE_6__ {int /*<<< orphan*/  miibus; } ;
typedef  TYPE_1__ ae_softc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  AE_MAC_FULL_DUPLEX ; 
 int /*<<< orphan*/  AE_MAC_REG ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int IFM_FDX ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct mii_data* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(ae_softc_t *sc)
{
	struct mii_data *mii;
	uint32_t val;

	FUNC0(sc);

	mii = FUNC4(sc->miibus);
	val = FUNC1(sc, AE_MAC_REG);
	val &= ~AE_MAC_FULL_DUPLEX;
	/* XXX disable AE_MAC_TX_FLOW_EN? */

	if ((FUNC3(mii->mii_media_active) & IFM_FDX) != 0)
		val |= AE_MAC_FULL_DUPLEX;

	FUNC2(sc, AE_MAC_REG, val);
}