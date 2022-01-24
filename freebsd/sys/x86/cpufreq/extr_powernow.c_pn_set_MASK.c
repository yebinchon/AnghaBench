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
struct pn_softc {int errata; int powernow_max_states; int pn_type; TYPE_1__* powernow_states; } ;
struct cf_setting {int /*<<< orphan*/  freq; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int freq; int fid; int vid; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENXIO ; 
 int PENDING_STUCK ; 
#define  PN7_TYPE 129 
#define  PN8_TYPE 128 
 struct pn_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct pn_softc*,int,int) ; 
 int FUNC3 (struct pn_softc*,int,int) ; 

__attribute__((used)) static int
FUNC4(device_t dev, const struct cf_setting *cf)
{
	struct pn_softc *sc;
	int fid, vid;
	int i;
	int rv;

	if (cf == NULL)
		return (EINVAL);
	sc = FUNC1(dev);

	if (sc->errata & PENDING_STUCK)
		return (ENXIO);

	for (i = 0; i < sc->powernow_max_states; ++i)
		if (FUNC0(sc->powernow_states[i].freq / 1000, cf->freq))
			break;

	fid = sc->powernow_states[i].fid;
	vid = sc->powernow_states[i].vid;

	rv = ENODEV;

	switch (sc->pn_type) {
	case PN7_TYPE:
		rv = FUNC2(sc, fid, vid);
		break;
	case PN8_TYPE:
		rv = FUNC3(sc, fid, vid);
		break;
	}

	return (rv);
}