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
typedef  scalar_t__ usb_error_t ;
typedef  int uint16_t ;
struct ieee80211com {int ic_lintval; } ;
struct rum_softc {int /*<<< orphan*/  sc_sleep_time; struct ieee80211com sc_ic; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  RT2573_MAC_CSR11 ; 
 int FUNC1 (int) ; 
 int RT2573_TBCN_DELAY_MAX ; 
 int FUNC2 (int) ; 
 int RT2573_TBCN_EXP_MAX ; 
 int /*<<< orphan*/  FUNC3 (struct rum_softc*) ; 
 scalar_t__ USB_ERR_NORMAL_COMPLETION ; 
 scalar_t__ FUNC4 (struct rum_softc*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int
FUNC5(struct rum_softc *sc, uint16_t bintval)
{
	struct ieee80211com *ic = &sc->sc_ic;
	usb_error_t uerror;
	int exp, delay;

	FUNC3(sc);

	exp = ic->ic_lintval / bintval;
	delay = ic->ic_lintval % bintval;

	if (exp > RT2573_TBCN_EXP_MAX)
		exp = RT2573_TBCN_EXP_MAX;
	if (delay > RT2573_TBCN_DELAY_MAX)
		delay = RT2573_TBCN_DELAY_MAX;

	uerror = FUNC4(sc, RT2573_MAC_CSR11,
	    FUNC2(exp) |
	    FUNC1(delay),
	    FUNC2(RT2573_TBCN_EXP_MAX) |
	    FUNC1(RT2573_TBCN_DELAY_MAX));

	if (uerror != USB_ERR_NORMAL_COMPLETION)
		return (EIO);

	sc->sc_sleep_time = FUNC0(exp * bintval + delay);

	return (0);
}