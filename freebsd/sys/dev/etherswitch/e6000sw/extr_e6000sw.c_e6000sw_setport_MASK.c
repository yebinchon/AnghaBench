#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct mii_data {int /*<<< orphan*/  mii_media; int /*<<< orphan*/  mii_ifp; } ;
struct TYPE_15__ {scalar_t__ es_port; int es_flags; int /*<<< orphan*/  es_ifr; int /*<<< orphan*/  es_pvid; } ;
typedef  TYPE_1__ etherswitch_port_t ;
struct TYPE_16__ {scalar_t__ num_ports; } ;
typedef  TYPE_2__ e6000sw_softc_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int EINVAL ; 
 int ETHERSWITCH_PORT_DROPTAGGED ; 
 int ETHERSWITCH_PORT_DROPUNTAGGED ; 
 int /*<<< orphan*/  PORT_CONTROL2 ; 
 int /*<<< orphan*/  PORT_CONTROL2_DISC_TAGGED ; 
 int /*<<< orphan*/  PORT_CONTROL2_DISC_UNTAGGED ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  SA_UNLOCKED ; 
 int /*<<< orphan*/  SIOCSIFMEDIA ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,scalar_t__) ; 
 struct mii_data* FUNC7 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC12(device_t dev, etherswitch_port_t *p)
{
	e6000sw_softc_t *sc;
	int err;
	struct mii_data *mii;
	uint32_t reg;

	sc = FUNC4(dev);
	FUNC1(sc, SA_UNLOCKED);

	if (p->es_port >= sc->num_ports || p->es_port < 0)
		return (EINVAL);
	if (!FUNC6(sc, p->es_port))
		return (0);

	/* Port flags. */
	reg = FUNC8(sc, FUNC3(sc, p->es_port), PORT_CONTROL2);
	if (p->es_flags & ETHERSWITCH_PORT_DROPTAGGED)
		reg |= PORT_CONTROL2_DISC_TAGGED;
	else
		reg &= ~PORT_CONTROL2_DISC_TAGGED;
	if (p->es_flags & ETHERSWITCH_PORT_DROPUNTAGGED)
		reg |= PORT_CONTROL2_DISC_UNTAGGED;
	else
		reg &= ~PORT_CONTROL2_DISC_UNTAGGED;
	FUNC10(sc, FUNC3(sc, p->es_port), PORT_CONTROL2, reg);

	err = 0;
	FUNC0(sc);
	if (p->es_pvid != 0)
		FUNC9(sc, p->es_port, p->es_pvid);
	if (FUNC5(sc, p->es_port)) {
		mii = FUNC7(sc, p->es_port);
		err = FUNC11(mii->mii_ifp, &p->es_ifr, &mii->mii_media,
		    SIOCSIFMEDIA);
	}
	FUNC2(sc);

	return (err);
}