#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct jz4780_mmc_softc {int /*<<< orphan*/  sc_dev; TYPE_2__* sc_req; } ;
struct TYPE_4__ {TYPE_1__* cmd; } ;
struct TYPE_3__ {int /*<<< orphan*/  error; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct jz4780_mmc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JZ_MSC_IFLG ; 
 int /*<<< orphan*/  JZ_MSC_STAT ; 
 int /*<<< orphan*/  MMC_ERR_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct jz4780_mmc_softc*) ; 

__attribute__((used)) static void
FUNC3(void *arg)
{
	struct jz4780_mmc_softc *sc;

	sc = (struct jz4780_mmc_softc *)arg;
	if (sc->sc_req != NULL) {
		FUNC1(sc->sc_dev, "controller timeout, rint %#x stat %#x\n",
		    FUNC0(sc, JZ_MSC_IFLG), FUNC0(sc, JZ_MSC_STAT));
		sc->sc_req->cmd->error = MMC_ERR_TIMEOUT;
		FUNC2(sc);
	} else
		FUNC1(sc->sc_dev,
		    "Spurious timeout - no active request\n");
}