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
struct g_dev_softc {struct cdev* sc_dev; } ;
struct g_consumer {TYPE_1__* geom; struct g_dev_softc* private; } ;
struct diocskerneldump_arg {int /*<<< orphan*/  kda_index; } ;
struct cdev {int si_flags; } ;
typedef  int /*<<< orphan*/  kda ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  G_T_TOPOLOGY ; 
 int /*<<< orphan*/  KDA_REMOVE_DEV ; 
 int SI_DUMPDEV ; 
 int /*<<< orphan*/  FUNC0 (struct diocskerneldump_arg*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cdev*) ; 
 int /*<<< orphan*/  FUNC2 (struct cdev*,int /*<<< orphan*/ ,struct g_consumer*) ; 
 int /*<<< orphan*/  FUNC3 (struct cdev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct diocskerneldump_arg*) ; 
 int /*<<< orphan*/  g_dev_callback ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,struct g_consumer*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct g_consumer *cp)
{
	struct cdev *dev;
	struct g_dev_softc *sc;

	FUNC5();
	sc = cp->private;
	dev = sc->sc_dev;
	FUNC6(G_T_TOPOLOGY, "g_dev_orphan(%p(%s))", cp, cp->geom->name);

	/* Reset any dump-area set on this device */
	if (dev->si_flags & SI_DUMPDEV) {
		struct diocskerneldump_arg kda;

		FUNC0(&kda, sizeof(kda));
		kda.kda_index = KDA_REMOVE_DEV;
		(void)FUNC4(FUNC3(dev), &kda);
	}

	/* Destroy the struct cdev *so we get no more requests */
	FUNC1(dev);
	FUNC2(dev, g_dev_callback, cp);
}