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
struct iwm_softc {TYPE_1__* cfg; } ;
struct TYPE_2__ {scalar_t__ mqrx_supported; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  IWM_CSR_RESET ; 
 int /*<<< orphan*/  IWM_CSR_RESET_REG_FLAG_SW_RESET ; 
 int /*<<< orphan*/  IWM_UREG_CHICK ; 
 int /*<<< orphan*/  IWM_UREG_CHICK_MSI_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (struct iwm_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct iwm_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct iwm_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct iwm_softc*) ; 
 int FUNC5 (struct iwm_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct iwm_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC7(struct iwm_softc *sc)
{
	int error;

	if ((error = FUNC5(sc)) != 0)
		return error;

	/* Reset the entire device */
	FUNC1(sc, IWM_CSR_RESET, IWM_CSR_RESET_REG_FLAG_SW_RESET);
	FUNC0(5000);

	if ((error = FUNC2(sc)) != 0)
		return error;

	/* On newer chipsets MSI is disabled by default. */
	if (sc->cfg->mqrx_supported)
		FUNC6(sc, IWM_UREG_CHICK, IWM_UREG_CHICK_MSI_ENABLE);

	FUNC4(sc);
	FUNC3(sc);

	return 0;
}