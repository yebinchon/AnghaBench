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
struct mmc_softc {int /*<<< orphan*/  dev; } ;
struct mmc_ivars {int /*<<< orphan*/  vccq_180; int /*<<< orphan*/  vccq_120; } ;
typedef  enum mmc_bus_timing { ____Placeholder_mmc_bus_timing } mmc_bus_timing ;

/* Variables and functions */
 int MMC_ERR_INVALID ; 
 int MMC_ERR_NONE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vccq_120 ; 
 int /*<<< orphan*/  vccq_180 ; 
 int /*<<< orphan*/  vccq_330 ; 

__attribute__((used)) static int
FUNC3(struct mmc_softc *sc, struct mmc_ivars *ivar,
    enum mmc_bus_timing timing)
{

	if (FUNC0(&ivar->vccq_120, timing))
		FUNC1(sc->dev, vccq_120);
	else if (FUNC0(&ivar->vccq_180, timing))
		FUNC1(sc->dev, vccq_180);
	else
		FUNC1(sc->dev, vccq_330);
	if (FUNC2(sc->dev) != 0)
		return (MMC_ERR_INVALID);
	else
		return (MMC_ERR_NONE);
}