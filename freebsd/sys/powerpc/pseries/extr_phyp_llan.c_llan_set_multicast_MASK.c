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
struct llan_softc {int /*<<< orphan*/  unit; int /*<<< orphan*/  io_lock; struct ifnet* ifp; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  H_MULTICAST_CTRL ; 
 int /*<<< orphan*/  LLAN_CLEAR_MULTICAST ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (struct ifnet*,int /*<<< orphan*/ ,struct llan_softc*) ; 
 int /*<<< orphan*/  llan_set_maddr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct llan_softc *sc)
{
	struct ifnet *ifp = sc->ifp;

	FUNC1(&sc->io_lock, MA_OWNED);

	FUNC2(H_MULTICAST_CTRL, sc->unit, LLAN_CLEAR_MULTICAST, 0);

	FUNC0(ifp, llan_set_maddr, sc);

	return (0);
}