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
struct pci_nvme_softc {int /*<<< orphan*/  fw_log; int /*<<< orphan*/  health_log; int /*<<< orphan*/  err_log; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC1(struct pci_nvme_softc *sc)
{

	FUNC0(&sc->err_log, 0, sizeof(sc->err_log));
	FUNC0(&sc->health_log, 0, sizeof(sc->health_log));
	FUNC0(&sc->fw_log, 0, sizeof(sc->fw_log));
}