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
struct iwi_softc {int /*<<< orphan*/  fw_boot; int /*<<< orphan*/  fw_fw; int /*<<< orphan*/  fw_uc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC1(struct iwi_softc *sc)
{
	FUNC0(&sc->fw_uc);
	FUNC0(&sc->fw_fw);
	FUNC0(&sc->fw_boot);
}