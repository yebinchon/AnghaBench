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
typedef  int uint8_t ;
struct ucom_softc {int sc_flag; int sc_mcr; int sc_msr; } ;
struct tty {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int SER_CTS ; 
 int SER_DCD ; 
 int SER_DSR ; 
 int SER_DTR ; 
 int SER_RI ; 
 int SER_RTS ; 
 int UCOM_FLAG_HL_READY ; 
 int /*<<< orphan*/  FUNC0 (struct ucom_softc*,int /*<<< orphan*/ ) ; 
 struct ucom_softc* FUNC1 (struct tty*) ; 
 int /*<<< orphan*/  FUNC2 (struct ucom_softc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ucom_softc*,int) ; 

__attribute__((used)) static int
FUNC4(struct tty *tp, int sigon, int sigoff)
{
	struct ucom_softc *sc = FUNC1(tp);
	uint8_t onoff;

	FUNC0(sc, MA_OWNED);

	if (!(sc->sc_flag & UCOM_FLAG_HL_READY)) {
		return (0);
	}
	if ((sigon == 0) && (sigoff == 0)) {

		if (sc->sc_mcr & SER_DTR) {
			sigon |= SER_DTR;
		}
		if (sc->sc_mcr & SER_RTS) {
			sigon |= SER_RTS;
		}
		if (sc->sc_msr & SER_CTS) {
			sigon |= SER_CTS;
		}
		if (sc->sc_msr & SER_DCD) {
			sigon |= SER_DCD;
		}
		if (sc->sc_msr & SER_DSR) {
			sigon |= SER_DSR;
		}
		if (sc->sc_msr & SER_RI) {
			sigon |= SER_RI;
		}
		return (sigon);
	}
	if (sigon & SER_DTR) {
		sc->sc_mcr |= SER_DTR;
	}
	if (sigoff & SER_DTR) {
		sc->sc_mcr &= ~SER_DTR;
	}
	if (sigon & SER_RTS) {
		sc->sc_mcr |= SER_RTS;
	}
	if (sigoff & SER_RTS) {
		sc->sc_mcr &= ~SER_RTS;
	}
	onoff = (sc->sc_mcr & SER_DTR) ? 1 : 0;
	FUNC2(sc, onoff);

	onoff = (sc->sc_mcr & SER_RTS) ? 1 : 0;
	FUNC3(sc, onoff);

	return (0);
}