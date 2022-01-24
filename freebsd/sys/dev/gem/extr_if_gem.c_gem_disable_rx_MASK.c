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
struct gem_softc {int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int BUS_SPACE_BARRIER_READ ; 
 int BUS_SPACE_BARRIER_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct gem_softc*,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC1 (struct gem_softc*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct gem_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gem_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  GEM_MAC_RX_CONFIG ; 
 int GEM_MAC_RX_ENABLE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC5(struct gem_softc *sc)
{

	FUNC3(sc, GEM_MAC_RX_CONFIG,
	    FUNC2(sc, GEM_MAC_RX_CONFIG) & ~GEM_MAC_RX_ENABLE);
	FUNC0(sc, GEM_MAC_RX_CONFIG, 4,
	    BUS_SPACE_BARRIER_READ | BUS_SPACE_BARRIER_WRITE);
	if (FUNC1(sc, GEM_MAC_RX_CONFIG, GEM_MAC_RX_ENABLE, 0))
		return (1);
	FUNC4(sc->sc_dev, "cannot disable RX MAC\n");
	return (0);
}