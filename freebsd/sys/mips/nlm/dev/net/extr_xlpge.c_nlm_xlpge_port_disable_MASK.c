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
struct nlm_xlpge_softc {int /*<<< orphan*/  port; int /*<<< orphan*/  type; int /*<<< orphan*/  block; int /*<<< orphan*/  base_addr; int /*<<< orphan*/  xlpge_callout; struct ifnet* xlpge_if; } ;
struct ifnet {int /*<<< orphan*/  if_drv_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct nlm_xlpge_softc *sc)
{
	struct ifnet   *ifp;

	ifp = sc->xlpge_if;
	ifp->if_drv_flags &= ~IFF_DRV_RUNNING;

	FUNC0(&sc->xlpge_callout);
	FUNC1(sc->base_addr, sc->block, sc->type, sc->port);
}