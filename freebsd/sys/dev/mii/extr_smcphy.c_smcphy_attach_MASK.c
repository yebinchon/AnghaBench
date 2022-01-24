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
struct mii_softc {int dummy; } ;
struct mii_phy_funcs {int dummy; } ;
struct mii_attach_args {int /*<<< orphan*/  mii_id2; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int MIIF_NOISOLATE ; 
 int MIIF_NOMANPAUSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ MII_MODEL_SEEQ_80220 ; 
 struct mii_attach_args* FUNC1 (int /*<<< orphan*/ ) ; 
 struct mii_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,struct mii_phy_funcs const*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mii_softc*) ; 
 struct mii_phy_funcs smcphy80220_funcs ; 
 struct mii_phy_funcs smcphy_funcs ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct mii_softc *sc;
	struct mii_attach_args *ma;
	const struct mii_phy_funcs *mpf;

	sc = FUNC2(dev);
	ma = FUNC1(dev);
	if (FUNC0(ma->mii_id2) == MII_MODEL_SEEQ_80220)
		mpf = &smcphy80220_funcs;
	else
		mpf = &smcphy_funcs;
	FUNC3(dev, MIIF_NOISOLATE | MIIF_NOMANPAUSE, mpf, 1);
	FUNC4(sc);

	return (0);
}