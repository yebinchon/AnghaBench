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
typedef  int uint32_t ;
typedef  int u_int ;
struct TYPE_2__ {int /*<<< orphan*/  phys_mid; int /*<<< orphan*/  phys_hi; } ;
struct rtaspci_softc {int ex_write_pci_config; int /*<<< orphan*/  write_pci_config; TYPE_1__ sc_pcir; scalar_t__ sc_extended_config; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct rtaspci_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int,int,int,...) ; 

__attribute__((used)) static void
FUNC2(device_t dev, u_int bus, u_int slot, u_int func,
    u_int reg, uint32_t val, int width)
{
	struct rtaspci_softc *sc;
	uint32_t config_addr;
	int pcierror;

	sc = FUNC0(dev);
	
	config_addr = ((bus & 0xff) << 16) | ((slot & 0x1f) << 11) |
	    ((func & 0x7) << 8) | (reg & 0xff);
	if (sc->sc_extended_config)
		config_addr |= (reg & 0xf00) << 16;
		
	if (sc->ex_write_pci_config != -1)
		FUNC1(sc->ex_write_pci_config, 5, 1, config_addr,
		    sc->sc_pcir.phys_hi, sc->sc_pcir.phys_mid,
		    width, val, &pcierror);
	else
		FUNC1(sc->write_pci_config, 3, 1, config_addr,
		    width, val, &pcierror);
}