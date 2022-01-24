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
struct fxp_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (struct fxp_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fxp_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FXP_CSR_MDICONTROL ; 
 int FXP_MDI_WRITE ; 
 struct fxp_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC5(device_t dev, int phy, int reg, int value)
{
	struct fxp_softc *sc = FUNC3(dev);
	int count = 10000;

	FUNC1(sc, FXP_CSR_MDICONTROL,
	    (FXP_MDI_WRITE << 26) | (reg << 16) | (phy << 21) |
	    (value & 0xffff));

	while ((FUNC0(sc, FXP_CSR_MDICONTROL) & 0x10000000) == 0 &&
	    count--)
		FUNC2(10);

	if (count <= 0)
		FUNC4(dev, "fxp_miibus_writereg: timed out\n");
	return (0);
}