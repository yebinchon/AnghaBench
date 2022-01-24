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
struct ucom_softc {struct uchcom_softc* sc_parent; } ;
struct uchcom_softc {scalar_t__ sc_version; } ;
struct termios {int /*<<< orphan*/  c_ospeed; } ;

/* Variables and functions */
 int UCHCOM_LCR1_CS8 ; 
 int UCHCOM_LCR1_RX ; 
 int UCHCOM_LCR1_TX ; 
 int /*<<< orphan*/  UCHCOM_REG_LCR1 ; 
 int /*<<< orphan*/  UCHCOM_REG_LCR2 ; 
 int /*<<< orphan*/  UCHCOM_REQ_RESET ; 
 scalar_t__ UCHCOM_VER_30 ; 
 int /*<<< orphan*/  FUNC0 (struct uchcom_softc*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct uchcom_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct uchcom_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct uchcom_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct uchcom_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct uchcom_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct uchcom_softc*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC7(struct ucom_softc *ucom, struct termios *t)
{
	struct uchcom_softc *sc = ucom->sc_parent;

	FUNC1(sc, NULL);
	FUNC0(sc, UCHCOM_REQ_RESET, 0, 0);
	FUNC3(sc, t->c_ospeed);
	if (sc->sc_version < UCHCOM_VER_30) {
		FUNC2(sc, UCHCOM_REG_LCR1, NULL,
		    UCHCOM_REG_LCR2, NULL);
		FUNC6(sc, UCHCOM_REG_LCR1, 0x50,
		    UCHCOM_REG_LCR2, 0x00);
	} else {
		/*
		 * Set up line control:
		 * - enable transmit and receive
		 * - set 8n1 mode
		 * To do: support other sizes, parity, stop bits.
		 */
		FUNC6(sc,
		    UCHCOM_REG_LCR1,
		    UCHCOM_LCR1_RX | UCHCOM_LCR1_TX | UCHCOM_LCR1_CS8,
		    UCHCOM_REG_LCR2, 0x00);
	}
	FUNC5(sc);
	FUNC0(sc, UCHCOM_REQ_RESET, 0x501f, 0xd90a);
	FUNC3(sc, t->c_ospeed);
	FUNC4(sc);
	FUNC5(sc);
}