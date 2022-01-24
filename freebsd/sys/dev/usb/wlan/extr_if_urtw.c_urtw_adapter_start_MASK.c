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
typedef  int /*<<< orphan*/  uint8_t ;
struct ieee80211com {int /*<<< orphan*/ * ic_macaddr; int /*<<< orphan*/  ic_vaps; } ;
struct urtw_softc {scalar_t__ (* sc_rf_init ) (struct urtw_softc*) ;int /*<<< orphan*/  sc_sens; int /*<<< orphan*/  (* sc_rf_set_sens ) (struct urtw_softc*,int /*<<< orphan*/ ) ;struct ieee80211com sc_ic; } ;
struct ieee80211vap {int /*<<< orphan*/ * iv_myaddr; } ;

/* Variables and functions */
 struct ieee80211vap* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  URTW_ADDR_MAGIC1 ; 
 int /*<<< orphan*/  URTW_ADDR_MAGIC2 ; 
 int /*<<< orphan*/  URTW_ADDR_MAGIC3 ; 
 int /*<<< orphan*/  URTW_EPROM_CMD_CONFIG ; 
 int /*<<< orphan*/  URTW_EPROM_CMD_NORMAL ; 
 int /*<<< orphan*/  URTW_GPIO ; 
 int /*<<< orphan*/  URTW_INT_TIMEOUT ; 
 int /*<<< orphan*/  URTW_LED_CTL_POWER_ON ; 
 int /*<<< orphan*/  URTW_PSR ; 
 int /*<<< orphan*/  URTW_RATE_FALLBACK ; 
 int URTW_RATE_FALLBACK_ENABLE ; 
 int /*<<< orphan*/  URTW_TALLY_SEL ; 
 int /*<<< orphan*/  URTW_WPA_CONFIG ; 
 scalar_t__ FUNC1 (struct urtw_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct urtw_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct urtw_softc*) ; 
 scalar_t__ FUNC4 (struct urtw_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct urtw_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct urtw_softc*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC7 (struct urtw_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct urtw_softc*) ; 
 scalar_t__ FUNC9 (struct urtw_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct urtw_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct urtw_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct urtw_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static usb_error_t
FUNC13(struct urtw_softc *sc)
{
	struct ieee80211com *ic = &sc->sc_ic;
	struct ieee80211vap *vap = FUNC0(&ic->ic_vaps);
	const uint8_t *macaddr;
	usb_error_t error;

	error = FUNC5(sc);
	if (error)
		goto fail;

	FUNC12(sc, URTW_ADDR_MAGIC1, 0);
	FUNC12(sc, URTW_GPIO, 0);

	/* for led  */
	FUNC12(sc, URTW_ADDR_MAGIC1, 4);
	error = FUNC4(sc, URTW_LED_CTL_POWER_ON);
	if (error != 0)
		goto fail;

	error = FUNC7(sc, URTW_EPROM_CMD_CONFIG);
	if (error)
		goto fail;
	/* applying MAC address again.  */
	macaddr = vap ? vap->iv_myaddr : ic->ic_macaddr;
	FUNC6(sc, macaddr);
	if (error)
		goto fail;

	error = FUNC7(sc, URTW_EPROM_CMD_NORMAL);
	if (error)
		goto fail;

	error = FUNC9(sc);
	if (error)
		goto fail;

	FUNC11(sc, URTW_INT_TIMEOUT, 0);
	FUNC12(sc, URTW_WPA_CONFIG, 0);
	FUNC12(sc, URTW_RATE_FALLBACK, URTW_RATE_FALLBACK_ENABLE | 0x1);
	error = FUNC8(sc);
	if (error != 0)
		goto fail;

	error = sc->sc_rf_init(sc);
	if (error != 0)
		goto fail;
	if (sc->sc_rf_set_sens != NULL)
		sc->sc_rf_set_sens(sc, sc->sc_sens);

	/* XXX correct? to call write16  */
	FUNC10(sc, URTW_PSR, 1);
	FUNC10(sc, URTW_ADDR_MAGIC2, 0x10);
	FUNC12(sc, URTW_TALLY_SEL, 0x80);
	FUNC12(sc, URTW_ADDR_MAGIC3, 0x60);
	/* XXX correct? to call write16  */
	FUNC10(sc, URTW_PSR, 0);
	FUNC12(sc, URTW_ADDR_MAGIC1, 4);

	error = FUNC3(sc);
	if (error != 0)
		goto fail;

fail:
	return (error);
}