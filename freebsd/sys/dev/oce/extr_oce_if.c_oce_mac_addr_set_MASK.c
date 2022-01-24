#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_6__ {int /*<<< orphan*/  size_of_struct; int /*<<< orphan*/  mac_addr; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; TYPE_1__ macaddr; int /*<<< orphan*/  ifp; int /*<<< orphan*/  if_id; int /*<<< orphan*/  pmac_id; } ;
typedef  TYPE_2__* POCE_SOFTC ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(POCE_SOFTC sc)
{
	uint32_t old_pmac_id = sc->pmac_id;
	int status = 0;

	
	status = FUNC1((FUNC0(sc->ifp)), sc->macaddr.mac_addr,
			 sc->macaddr.size_of_struct);
	if (!status)
		return;

	status = FUNC4(sc, (uint8_t *)(FUNC0(sc->ifp)),
					sc->if_id, &sc->pmac_id);
	if (!status) {
		status = FUNC5(sc, sc->if_id, old_pmac_id);
		FUNC2((FUNC0(sc->ifp)), sc->macaddr.mac_addr,
				 sc->macaddr.size_of_struct); 
	}
	if (status)
		FUNC3(sc->dev, "Failed update macaddress\n");

}