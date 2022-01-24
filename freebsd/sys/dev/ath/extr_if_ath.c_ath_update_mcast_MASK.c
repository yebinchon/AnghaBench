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
struct ieee80211com {struct ath_softc* ic_softc; } ;
struct ath_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_softc*) ; 
 int /*<<< orphan*/  HAL_PM_AWAKE ; 
 int /*<<< orphan*/  FUNC2 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_softc*) ; 

__attribute__((used)) static void
FUNC5(struct ieee80211com *ic)
{
	struct ath_softc *sc = ic->ic_softc;

	FUNC0(sc);
	FUNC3(sc, HAL_PM_AWAKE);
	FUNC1(sc);

	FUNC4(sc);

	FUNC0(sc);
	FUNC2(sc);
	FUNC1(sc);
}