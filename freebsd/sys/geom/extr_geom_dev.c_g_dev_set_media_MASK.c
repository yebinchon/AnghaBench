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
struct g_dev_softc {struct cdev* sc_alias; struct cdev* sc_dev; } ;
struct g_consumer {struct g_dev_softc* private; } ;
struct cdev {char* si_name; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  SPECNAMELEN ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char*) ; 

__attribute__((used)) static void
FUNC2(struct g_consumer *cp)
{
	struct g_dev_softc *sc;
	struct cdev *dev;
	char buf[SPECNAMELEN + 6];

	sc = cp->private;
	dev = sc->sc_dev;
	FUNC1(buf, sizeof(buf), "cdev=%s", dev->si_name);
	FUNC0("DEVFS", "CDEV", "MEDIACHANGE", buf, M_WAITOK);
	FUNC0("GEOM", "DEV", "MEDIACHANGE", buf, M_WAITOK);
	dev = sc->sc_alias;
	if (dev != NULL) {
		FUNC1(buf, sizeof(buf), "cdev=%s", dev->si_name);
		FUNC0("DEVFS", "CDEV", "MEDIACHANGE", buf, M_WAITOK);
		FUNC0("GEOM", "DEV", "MEDIACHANGE", buf, M_WAITOK);
	}
}