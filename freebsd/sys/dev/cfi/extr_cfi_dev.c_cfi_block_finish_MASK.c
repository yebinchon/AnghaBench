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
struct cfi_softc {scalar_t__ sc_writing; scalar_t__ sc_wrofs; scalar_t__ sc_wrbufsz; int /*<<< orphan*/ * sc_wrbuf; int /*<<< orphan*/ * sc_wrbufcpy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_TEMP ; 
 int FUNC0 (struct cfi_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC2(struct cfi_softc *sc)
{
	int error;

	error = FUNC0(sc);
	FUNC1(sc->sc_wrbuf, M_TEMP);
	FUNC1(sc->sc_wrbufcpy, M_TEMP);
	sc->sc_wrbuf = NULL;
	sc->sc_wrbufsz = 0;
	sc->sc_wrofs = 0;
	sc->sc_writing = 0;
	return (error);
}