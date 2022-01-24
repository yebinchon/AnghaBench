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
struct uath_softc {int /*<<< orphan*/  sc_dev; } ;
struct ieee80211_channel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct uath_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct uath_softc*) ; 
 int FUNC3 (struct uath_softc*) ; 
 int FUNC4 (struct uath_softc*,struct ieee80211_channel*) ; 
 int FUNC5 (struct uath_softc*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct uath_softc*) ; 

__attribute__((used)) static int
FUNC7(struct uath_softc *sc, struct ieee80211_channel *c)
{
	int error;

	FUNC0(sc);

	/* set radio frequency */
	error = FUNC4(sc, c);
	if (error) {
		FUNC1(sc->sc_dev,
		    "could not set channel, error %d\n", error);
		goto failed;
	}
	/* reset Tx rings */
	error = FUNC3(sc);
	if (error) {
		FUNC1(sc->sc_dev,
		    "could not reset Tx queues, error %d\n", error);
		goto failed;
	}
	/* set Tx rings WME properties */
	error = FUNC6(sc);
	if (error) {
		FUNC1(sc->sc_dev,
		    "could not init Tx queues, error %d\n", error);
		goto failed;
	}
	error = FUNC5(sc, 0);
	if (error) {
		FUNC1(sc->sc_dev,
		    "could not set led state, error %d\n", error);
		goto failed;
	}
	error = FUNC2(sc);
	if (error) {
		FUNC1(sc->sc_dev,
		    "could not flush pipes, error %d\n", error);
		goto failed;
	}
failed:
	return (error);
}