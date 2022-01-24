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
struct ncr53c9x_softc {int dummy; } ;
struct esp_pci_softc {scalar_t__ sc_datain; scalar_t__ sc_active; int /*<<< orphan*/  sc_xferdmam; int /*<<< orphan*/  sc_xferdmat; } ;

/* Variables and functions */
 int DMACMD_ABORT ; 
 int DMACMD_DIR ; 
 int /*<<< orphan*/  DMA_CMD ; 
 int /*<<< orphan*/  FUNC0 (struct esp_pci_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct ncr53c9x_softc *sc)
{
	struct esp_pci_softc *esc = (struct esp_pci_softc *)sc;

	/* DMA stop */
	/* XXX what should we do here ? */
	FUNC0(esc, DMA_CMD,
	    DMACMD_ABORT | (esc->sc_datain != 0 ? DMACMD_DIR : 0));
	FUNC1(esc->sc_xferdmat, esc->sc_xferdmam);

	esc->sc_active = 0;
}