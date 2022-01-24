#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_7__ {int /*<<< orphan*/  ifp; int /*<<< orphan*/ * vlan_detach; int /*<<< orphan*/ * vlan_attach; int /*<<< orphan*/  timer; int /*<<< orphan*/  dev_lock; struct TYPE_7__* next; } ;
typedef  TYPE_1__* POCE_SOFTC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 TYPE_1__* softc_head ; 
 TYPE_1__* softc_tail ; 
 int /*<<< orphan*/  vlan_config ; 
 int /*<<< orphan*/  vlan_unconfig ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
	POCE_SOFTC sc = FUNC5(dev);
	POCE_SOFTC poce_sc_tmp, *ppoce_sc_tmp1, poce_sc_tmp2 = NULL;

        poce_sc_tmp = softc_head;
        ppoce_sc_tmp1 = &softc_head;
        while (poce_sc_tmp != NULL) {
          if (poce_sc_tmp == sc) {
            *ppoce_sc_tmp1 = sc->next;
            if (sc->next == NULL) {
              softc_tail = poce_sc_tmp2;
            }
            break;
          }
          poce_sc_tmp2 = poce_sc_tmp;
          ppoce_sc_tmp1 = &poce_sc_tmp->next;
          poce_sc_tmp = poce_sc_tmp->next;
        }

	FUNC1(&sc->dev_lock);
	FUNC9(sc);
	FUNC2(&sc->dev_lock);

	FUNC4(&sc->timer);
	
	if (sc->vlan_attach != NULL)
		FUNC0(vlan_config, sc->vlan_attach);
	if (sc->vlan_detach != NULL)
		FUNC0(vlan_unconfig, sc->vlan_detach);

	FUNC6(sc->ifp);

	FUNC7(sc->ifp);

	FUNC8(sc);

	FUNC3(dev);

	return 0;
}