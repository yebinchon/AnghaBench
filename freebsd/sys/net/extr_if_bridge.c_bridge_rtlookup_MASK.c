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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct ifnet {int dummy; } ;
struct bridge_softc {int dummy; } ;
struct bridge_rtnode {struct ifnet* brt_ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bridge_softc*) ; 
 struct bridge_rtnode* FUNC1 (struct bridge_softc*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ifnet *
FUNC2(struct bridge_softc *sc, const uint8_t *addr, uint16_t vlan)
{
	struct bridge_rtnode *brt;

	FUNC0(sc);

	if ((brt = FUNC1(sc, addr, vlan)) == NULL)
		return (NULL);

	return (brt->brt_ifp);
}