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
struct mii_data {int dummy; } ;
struct mgb_softc {int /*<<< orphan*/  dev; int /*<<< orphan*/  miibus; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mgb_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mgb_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int MGB_RFE_ALLOW_BROADCAST ; 
 int /*<<< orphan*/  MGB_RFE_ALLOW_PERFECT_FILTER ; 
 int MGB_RFE_ALLOW_UNICAST ; 
 int /*<<< orphan*/  MGB_RFE_CTL ; 
 struct mii_data* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 struct mgb_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mgb_softc*) ; 
 int FUNC7 (struct mii_data*) ; 

__attribute__((used)) static void
FUNC8(if_ctx_t ctx)
{
	struct mgb_softc *sc;
	struct mii_data *miid;
	int error;

	sc = FUNC5(ctx);
	miid = FUNC3(sc->miibus);
	FUNC4(sc->dev, "running init ...\n");

	FUNC6(sc);

	/* XXX: Turn off perfect filtering, turn on (broad|multi|uni)cast rx */
	FUNC0(sc, MGB_RFE_CTL, MGB_RFE_ALLOW_PERFECT_FILTER);
	FUNC1(sc, MGB_RFE_CTL,
	    MGB_RFE_ALLOW_BROADCAST |
	    MGB_RFE_ALLOW_UNICAST |
	    MGB_RFE_ALLOW_UNICAST);

	error = FUNC7(miid);
	FUNC2(!error, ("mii_mediachg returned: %d", error));
}