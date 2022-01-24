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
struct thread {int dummy; } ;
struct pccard_softc {scalar_t__ cis_open; int /*<<< orphan*/ * cis; int /*<<< orphan*/  dev; } ;
struct cdev {struct pccard_softc* si_drv1; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  M_TEMP ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  pccard_build_cis ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static	int
FUNC4(struct cdev *dev, int oflags, int devtype, struct thread *td)
{
	device_t parent, child;
	device_t *kids;
	int cnt, err;
	struct pccard_softc *sc;

	sc = dev->si_drv1;
	if (sc->cis_open)
		return (EBUSY);
	parent = sc->dev;
	err = FUNC0(parent, &kids, &cnt);
	if (err)
		return err;
	if (cnt == 0) {
		FUNC1(kids, M_TEMP);
		sc->cis_open++;
		sc->cis = NULL;
		return (0);
	}
	child = kids[0];
	FUNC1(kids, M_TEMP);
	sc->cis = FUNC2(sizeof(*sc->cis), M_TEMP, M_ZERO | M_WAITOK);
	err = FUNC3(parent, child, pccard_build_cis, sc->cis);
	if (err) {
		FUNC1(sc->cis, M_TEMP);
		sc->cis = NULL;
		return (err);
	}
	sc->cis_open++;
	return (0);
}