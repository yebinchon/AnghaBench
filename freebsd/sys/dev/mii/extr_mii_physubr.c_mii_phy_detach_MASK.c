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
struct mii_softc {int /*<<< orphan*/ * mii_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mii_softc*,int /*<<< orphan*/ ) ; 
 struct mii_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mii_list ; 

int
FUNC2(device_t dev)
{
	struct mii_softc *sc;

	sc = FUNC1(dev);
	sc->mii_dev = NULL;
	FUNC0(sc, mii_list);
	return (0);
}