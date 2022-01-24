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
struct umcs7840_softc {int /*<<< orphan*/  sc_intr_xfer; TYPE_1__* sc_ports; } ;
struct ucom_softc {size_t sc_portno; struct umcs7840_softc* sc_parent; } ;
struct TYPE_2__ {int /*<<< orphan*/ * sc_xfer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t) ; 
 int UMCS7840_N_TRANSFERS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC2(struct ucom_softc *ucom)
{
	struct umcs7840_softc *sc = ucom->sc_parent;

	FUNC0("Port %d poll\n", ucom->sc_portno);
	FUNC1(sc->sc_ports[ucom->sc_portno].sc_xfer, UMCS7840_N_TRANSFERS);
	FUNC1(&sc->sc_intr_xfer, 1);
}