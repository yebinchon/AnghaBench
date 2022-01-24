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
struct mii_data {int /*<<< orphan*/  mii_media_active; } ;
struct mgb_softc {int /*<<< orphan*/  baudrate; int /*<<< orphan*/  link_state; int /*<<< orphan*/  ctx; int /*<<< orphan*/  miibus; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct mii_data* FUNC0 (int /*<<< orphan*/ ) ; 
 struct mgb_softc* FUNC1 (struct mii_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(device_t dev)
{
	struct mgb_softc *sc;
	struct mii_data *miid;

	sc = FUNC1(FUNC0(dev));
	miid = FUNC0(sc->miibus);
	/* Update baudrate in iflib */
	sc->baudrate = FUNC3(miid->mii_media_active);
	FUNC2(sc->ctx, sc->link_state, sc->baudrate);
}