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
struct iwm_softc {int /*<<< orphan*/  sc_intmask; } ;

/* Variables and functions */
 int /*<<< orphan*/  IWM_CSR_GP_CNTRL ; 
 int /*<<< orphan*/  IWM_CSR_GP_CNTRL_REG_FLAG_RFKILL_WAKE_L1A_EN ; 
 int /*<<< orphan*/  IWM_CSR_INT_BIT_RF_KILL ; 
 int /*<<< orphan*/  IWM_CSR_INT_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct iwm_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iwm_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2(struct iwm_softc *sc)
{
	sc->sc_intmask = IWM_CSR_INT_BIT_RF_KILL;
	FUNC1(sc, IWM_CSR_INT_MASK, sc->sc_intmask);
	FUNC0(sc, IWM_CSR_GP_CNTRL,
	    IWM_CSR_GP_CNTRL_REG_FLAG_RFKILL_WAKE_L1A_EN);
}