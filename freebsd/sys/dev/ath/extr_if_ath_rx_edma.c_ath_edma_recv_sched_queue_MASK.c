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
struct ath_softc {int /*<<< orphan*/  sc_rxtask; int /*<<< orphan*/  sc_tq; } ;
typedef  int /*<<< orphan*/  HAL_RX_QUEUE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_softc*) ; 
 int /*<<< orphan*/  HAL_PM_AWAKE ; 
 int /*<<< orphan*/  FUNC2 (struct ath_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct ath_softc *sc, HAL_RX_QUEUE qtype,
    int dosched)
{

	FUNC0(sc);
	FUNC4(sc, HAL_PM_AWAKE);
	FUNC1(sc);

	FUNC2(sc, qtype, dosched);

	FUNC0(sc);
	FUNC3(sc);
	FUNC1(sc);

	FUNC5(sc->sc_tq, &sc->sc_rxtask);
}