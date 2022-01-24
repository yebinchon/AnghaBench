#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  scalar_t__ u_int ;
struct TYPE_2__ {scalar_t__ num_cpuirqs; } ;
struct bcm_bmips_softc {int /*<<< orphan*/  cfg; TYPE_1__ bcm_mips; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  SIBA_CFG0_INTVEC ; 
 int /*<<< orphan*/  SIBA_CFG0_IPSFLAG ; 
 int SIBA_IPS_INT1_MASK ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ SIBA_MAX_INTR ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(struct bcm_bmips_softc *sc, u_int mips_irq, u_int ivec)
{
	FUNC0(ivec < SIBA_MAX_INTR, ("invalid sbflag# ivec"));
	FUNC0(mips_irq < sc->bcm_mips.num_cpuirqs, ("invalid MIPS IRQ %u",
	    mips_irq));

	if (mips_irq == 0) {
		uint32_t sbintvec;

		sbintvec = FUNC3(sc->cfg, SIBA_CFG0_INTVEC);
		sbintvec |= (1 << ivec);
		FUNC4(sc->cfg, SIBA_CFG0_INTVEC, sbintvec);
	} else {
		uint32_t ipsflag;

		/* Can we route this via ipsflag? */
		FUNC0(((1 << ivec) & SIBA_IPS_INT1_MASK) != 0,
		    ("cannot route high sbflag# ivec %u", ivec));

		ipsflag = FUNC3(sc->cfg, SIBA_CFG0_IPSFLAG);
		ipsflag |= (ivec << FUNC2(mips_irq)) &
		    FUNC1(mips_irq);
		FUNC4(sc->cfg, SIBA_CFG0_IPSFLAG, ipsflag);
	}
}