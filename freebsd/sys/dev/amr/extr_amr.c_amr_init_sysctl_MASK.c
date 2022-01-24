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
struct amr_softc {int /*<<< orphan*/  amr_maxio; int /*<<< orphan*/  amr_dev; int /*<<< orphan*/  amr_busyslots; int /*<<< orphan*/  amr_nextslot; int /*<<< orphan*/  amr_allow_vol_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int /*<<< orphan*/  CTLFLAG_RW ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct amr_softc *sc)
{

    FUNC0(FUNC2(sc->amr_dev),
	FUNC1(FUNC3(sc->amr_dev)),
	OID_AUTO, "allow_volume_configure", CTLFLAG_RW, &sc->amr_allow_vol_config, 0,
	"");
    FUNC0(FUNC2(sc->amr_dev),
	FUNC1(FUNC3(sc->amr_dev)),
	OID_AUTO, "nextslot", CTLFLAG_RD, &sc->amr_nextslot, 0,
	"");
    FUNC0(FUNC2(sc->amr_dev),
	FUNC1(FUNC3(sc->amr_dev)),
	OID_AUTO, "busyslots", CTLFLAG_RD, &sc->amr_busyslots, 0,
	"");
    FUNC0(FUNC2(sc->amr_dev),
	FUNC1(FUNC3(sc->amr_dev)),
	OID_AUTO, "maxio", CTLFLAG_RD, &sc->amr_maxio, 0,
	"");
}