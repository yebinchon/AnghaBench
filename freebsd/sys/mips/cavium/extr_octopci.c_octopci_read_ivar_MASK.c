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
struct octopci_softc {uintptr_t sc_domain; uintptr_t sc_bus; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENOENT ; 
#define  PCIB_IVAR_BUS 129 
#define  PCIB_IVAR_DOMAIN 128 
 struct octopci_softc* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(device_t dev, device_t child, int which, uintptr_t *result)
{
	struct octopci_softc *sc;
	
	sc = FUNC0(dev);

	switch (which) {
	case PCIB_IVAR_DOMAIN:
		*result = sc->sc_domain;
		return (0);
	case PCIB_IVAR_BUS:
		*result = sc->sc_bus;
		return (0);
		
	}
	return (ENOENT);
}