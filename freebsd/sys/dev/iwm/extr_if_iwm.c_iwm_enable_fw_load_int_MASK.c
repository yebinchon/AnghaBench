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
 int /*<<< orphan*/  IWM_CSR_INT_BIT_FH_TX ; 
 int /*<<< orphan*/  IWM_CSR_INT_MASK ; 
 int /*<<< orphan*/  IWM_DEBUG_INTR ; 
 int /*<<< orphan*/  FUNC0 (struct iwm_softc*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwm_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC2(struct iwm_softc *sc)
{
	FUNC0(sc, IWM_DEBUG_INTR, "Enabling FW load interrupt\n");
	sc->sc_intmask = IWM_CSR_INT_BIT_FH_TX;
	FUNC1(sc, IWM_CSR_INT_MASK, sc->sc_intmask);
}