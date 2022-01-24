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
struct amdsmb_softc {scalar_t__ res; int /*<<< orphan*/  rid; int /*<<< orphan*/  lock; int /*<<< orphan*/ * smbus; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct amdsmb_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct amdsmb_softc *amdsmb_sc = FUNC2(dev);

	if (amdsmb_sc->smbus) {
		FUNC1(dev, amdsmb_sc->smbus);
		amdsmb_sc->smbus = NULL;
	}

	FUNC3(&amdsmb_sc->lock);
	if (amdsmb_sc->res)
		FUNC0(dev, SYS_RES_IOPORT, amdsmb_sc->rid,
		    amdsmb_sc->res);

	return (0);
}