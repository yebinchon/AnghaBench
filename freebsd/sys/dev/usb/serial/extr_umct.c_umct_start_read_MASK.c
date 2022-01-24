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
struct umct_softc {int /*<<< orphan*/ * sc_xfer; } ;
struct ucom_softc {struct umct_softc* sc_parent; } ;

/* Variables and functions */
 size_t UMCT_BULK_DT_RD ; 
 size_t UMCT_INTR_DT_RD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(struct ucom_softc *ucom)
{
	struct umct_softc *sc = ucom->sc_parent;

	/* start interrupt endpoint */
	FUNC0(sc->sc_xfer[UMCT_INTR_DT_RD]);

	/* start read endpoint */
	FUNC0(sc->sc_xfer[UMCT_BULK_DT_RD]);
}