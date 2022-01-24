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
struct cas_softc {int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int BUS_SPACE_BARRIER_READ ; 
 int BUS_SPACE_BARRIER_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct cas_softc*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  CAS_MAC_RX_CONF ; 
 int CAS_MAC_RX_CONF_EN ; 
 int FUNC1 (struct cas_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cas_softc*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ bootverbose ; 
 scalar_t__ FUNC3 (struct cas_softc*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC5(struct cas_softc *sc)
{

	FUNC2(sc, CAS_MAC_RX_CONF,
	    FUNC1(sc, CAS_MAC_RX_CONF) & ~CAS_MAC_RX_CONF_EN);
	FUNC0(sc, CAS_MAC_RX_CONF, 4,
	    BUS_SPACE_BARRIER_READ | BUS_SPACE_BARRIER_WRITE);
	if (FUNC3(sc, CAS_MAC_RX_CONF, CAS_MAC_RX_CONF_EN, 0))
		return (1);
	if (bootverbose)
		FUNC4(sc->sc_dev, "cannot disable RX MAC\n");
	return (0);
}