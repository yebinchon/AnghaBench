#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int ;
struct seeprom_descriptor {void* sd_dataout_offset; void* sd_status_offset; void* sd_control_offset; struct ahc_softc* sd_ahc; } ;
struct TYPE_4__ {int /*<<< orphan*/  csize_lattime; int /*<<< orphan*/  command; int /*<<< orphan*/  devconfig; } ;
struct TYPE_5__ {TYPE_1__ pci_softc; } ;
struct ahc_softc {int flags; TYPE_3__* seep_config; TYPE_2__ bus_softc; int /*<<< orphan*/  dev_softc; } ;
struct TYPE_6__ {int /*<<< orphan*/  adapter_control; } ;

/* Variables and functions */
 int AHC_HAS_TERM_LOGIC ; 
 int /*<<< orphan*/  AIC_POWER_STATE_D0 ; 
 int /*<<< orphan*/  CSIZE_LATTIME ; 
 int /*<<< orphan*/  DEVCONFIG ; 
 int /*<<< orphan*/  PCIR_COMMAND ; 
 void* SEECTL ; 
 int /*<<< orphan*/  FUNC0 (struct ahc_softc*,struct seeprom_descriptor*) ; 
 int /*<<< orphan*/  FUNC1 (struct seeprom_descriptor*) ; 
 int FUNC2 (struct ahc_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ahc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ahc_softc*,struct seeprom_descriptor*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct ahc_softc *ahc)
{

	FUNC4(ahc, AIC_POWER_STATE_D0);

	/*
	 * We assume that the OS has restored our register
	 * mappings, etc.  Just update the config space registers
	 * that the OS doesn't know about and rely on our chip
	 * reset handler to handle the rest.
	 */
	FUNC3(ahc->dev_softc, DEVCONFIG,
			     ahc->bus_softc.pci_softc.devconfig, /*bytes*/4);
	FUNC3(ahc->dev_softc, PCIR_COMMAND,
			     ahc->bus_softc.pci_softc.command, /*bytes*/1);
	FUNC3(ahc->dev_softc, CSIZE_LATTIME,
			     ahc->bus_softc.pci_softc.csize_lattime,
			     /*bytes*/1);
	if ((ahc->flags & AHC_HAS_TERM_LOGIC) != 0) {
		struct	seeprom_descriptor sd;
		u_int	sxfrctl1;

		sd.sd_ahc = ahc;
		sd.sd_control_offset = SEECTL;		
		sd.sd_status_offset = SEECTL;		
		sd.sd_dataout_offset = SEECTL;		

		FUNC0(ahc, &sd);
		FUNC5(ahc, &sd,
				      ahc->seep_config->adapter_control,
				      &sxfrctl1);
		FUNC1(&sd);
	}
	return (FUNC2(ahc));
}