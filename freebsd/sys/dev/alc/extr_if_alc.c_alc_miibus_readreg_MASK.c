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
struct alc_softc {int alc_flags; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ALC_FLAG_AR816X_FAMILY ; 
 int FUNC0 (struct alc_softc*,int,int) ; 
 int FUNC1 (struct alc_softc*,int,int) ; 
 struct alc_softc* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev, int phy, int reg)
{
	struct alc_softc *sc;
	int v;

	sc = FUNC2(dev);
	if ((sc->alc_flags & ALC_FLAG_AR816X_FAMILY) != 0)
		v = FUNC1(sc, phy, reg);
	else
		v = FUNC0(sc, phy, reg);
	return (v);
}