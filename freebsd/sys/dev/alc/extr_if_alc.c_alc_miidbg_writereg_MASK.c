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
typedef  int /*<<< orphan*/  uint32_t ;
struct alc_softc {int /*<<< orphan*/  alc_phyaddr; int /*<<< orphan*/  alc_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALC_MII_DBG_ADDR ; 
 int /*<<< orphan*/  ALC_MII_DBG_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static uint32_t
FUNC1(struct alc_softc *sc, int reg, int val)
{

	FUNC0(sc->alc_dev, sc->alc_phyaddr, ALC_MII_DBG_ADDR,
	    reg);
	return (FUNC0(sc->alc_dev, sc->alc_phyaddr,
	    ALC_MII_DBG_DATA, val));
}