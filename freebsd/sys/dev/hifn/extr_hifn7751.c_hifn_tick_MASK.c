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
struct hifn_softc {scalar_t__ sc_active; scalar_t__ sc_cmdu; scalar_t__ sc_srcu; scalar_t__ sc_dstu; scalar_t__ sc_resu; int /*<<< orphan*/  sc_tickto; scalar_t__ sc_r_busy; scalar_t__ sc_d_busy; scalar_t__ sc_s_busy; scalar_t__ sc_c_busy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HIFN_1_DMA_CSR ; 
 int HIFN_DMACSR_C_CTRL_DIS ; 
 int HIFN_DMACSR_D_CTRL_DIS ; 
 int HIFN_DMACSR_R_CTRL_DIS ; 
 int HIFN_DMACSR_S_CTRL_DIS ; 
 int /*<<< orphan*/  FUNC0 (struct hifn_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct hifn_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct hifn_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct hifn_softc*) ; 
 int /*<<< orphan*/  hz ; 

__attribute__((used)) static void
FUNC4(void* vsc)
{
	struct hifn_softc *sc = vsc;

	FUNC0(sc);
	if (sc->sc_active == 0) {
		u_int32_t r = 0;

		if (sc->sc_cmdu == 0 && sc->sc_c_busy) {
			sc->sc_c_busy = 0;
			r |= HIFN_DMACSR_C_CTRL_DIS;
		}
		if (sc->sc_srcu == 0 && sc->sc_s_busy) {
			sc->sc_s_busy = 0;
			r |= HIFN_DMACSR_S_CTRL_DIS;
		}
		if (sc->sc_dstu == 0 && sc->sc_d_busy) {
			sc->sc_d_busy = 0;
			r |= HIFN_DMACSR_D_CTRL_DIS;
		}
		if (sc->sc_resu == 0 && sc->sc_r_busy) {
			sc->sc_r_busy = 0;
			r |= HIFN_DMACSR_R_CTRL_DIS;
		}
		if (r)
			FUNC2(sc, HIFN_1_DMA_CSR, r);
	} else
		sc->sc_active--;
	FUNC1(sc);
	FUNC3(&sc->sc_tickto, hz, hifn_tick, sc);
}