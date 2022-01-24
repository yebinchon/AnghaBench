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
struct iwi_softc {scalar_t__ antenna; scalar_t__ bluetooth; int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int CTLFLAG_RD ; 
 int /*<<< orphan*/  CTLFLAG_RW ; 
 int CTLTYPE_INT ; 
 int CTLTYPE_OPAQUE ; 
 scalar_t__ IWI_ANTENNA_AUTO ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,struct iwi_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sysctl_oid*) ; 
 struct sysctl_ctx_list* FUNC3 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iwi_sysctl_radio ; 
 int /*<<< orphan*/  iwi_sysctl_stats ; 

__attribute__((used)) static void
FUNC5(struct iwi_softc *sc)
{
	struct sysctl_ctx_list *ctx = FUNC3(sc->sc_dev);
	struct sysctl_oid *tree = FUNC4(sc->sc_dev);

	FUNC1(ctx, FUNC2(tree), OID_AUTO, "radio",
	    CTLTYPE_INT | CTLFLAG_RD, sc, 0, iwi_sysctl_radio, "I",
	    "radio transmitter switch state (0=off, 1=on)");

	FUNC1(ctx, FUNC2(tree), OID_AUTO, "stats",
	    CTLTYPE_OPAQUE | CTLFLAG_RD, sc, 0, iwi_sysctl_stats, "S",
	    "statistics");

	sc->bluetooth = 0;
	FUNC0(ctx, FUNC2(tree), OID_AUTO, "bluetooth",
	    CTLFLAG_RW, &sc->bluetooth, 0, "bluetooth coexistence");

	sc->antenna = IWI_ANTENNA_AUTO;
	FUNC0(ctx, FUNC2(tree), OID_AUTO, "antenna",
	    CTLFLAG_RW, &sc->antenna, 0, "antenna (0=auto)");
}