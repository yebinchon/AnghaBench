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
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct ar71xx_wdog_softc {int /*<<< orphan*/  reboot_from_watchdog; int /*<<< orphan*/  armed; int /*<<< orphan*/  debug; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int /*<<< orphan*/  CTLFLAG_RW ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sysctl_oid*) ; 
 struct ar71xx_wdog_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 struct sysctl_ctx_list* FUNC3 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(device_t dev)
{
	struct ar71xx_wdog_softc *sc = FUNC2(dev);

        struct sysctl_ctx_list *ctx = FUNC3(sc->dev);
        struct sysctl_oid *tree = FUNC4(sc->dev);

        FUNC0(ctx, FUNC1(tree), OID_AUTO,
                "debug", CTLFLAG_RW, &sc->debug, 0,
                "enable watchdog debugging");
        FUNC0(ctx, FUNC1(tree), OID_AUTO,
                "armed", CTLFLAG_RD, &sc->armed, 0,
                "whether the watchdog is armed");
        FUNC0(ctx, FUNC1(tree), OID_AUTO,
                "reboot_from_watchdog", CTLFLAG_RD, &sc->reboot_from_watchdog, 0,
                "whether the system rebooted from the watchdog");
}