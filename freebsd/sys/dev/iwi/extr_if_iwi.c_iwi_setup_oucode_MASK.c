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
struct iwi_softc {int /*<<< orphan*/  sc_dev; } ;
struct iwi_fw {int /*<<< orphan*/  name; } ;
struct iwi_firmware_ohdr {int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 scalar_t__ IWI_FW_MODE_UCODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct iwi_firmware_ohdr* FUNC1 (struct iwi_softc*,struct iwi_fw*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static const struct iwi_firmware_ohdr *
FUNC3(struct iwi_softc *sc, struct iwi_fw *fw)
{
	const struct iwi_firmware_ohdr *hdr;

	hdr = FUNC1(sc, fw);
	if (hdr != NULL && FUNC2(hdr->mode) != IWI_FW_MODE_UCODE) {
		FUNC0(sc->sc_dev, "%s is not a ucode image\n",
		    fw->name);
		hdr = NULL;
	}
	return hdr;
}