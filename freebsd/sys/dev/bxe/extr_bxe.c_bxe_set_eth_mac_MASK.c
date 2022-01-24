#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_3__ {int /*<<< orphan*/  mac_addr; } ;
struct bxe_softc {TYPE_2__* sp_objs; TYPE_1__ link_params; } ;
struct TYPE_4__ {int /*<<< orphan*/  mac_obj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  DBG_LOAD ; 
 int /*<<< orphan*/  ECORE_ETH_MAC ; 
 int /*<<< orphan*/  RAMROD_COMP_WAIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long*) ; 
 int FUNC2 (struct bxe_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long*) ; 

__attribute__((used)) static int
FUNC3(struct bxe_softc *sc,
                uint8_t          set)
{
    unsigned long ramrod_flags = 0;

    FUNC0(sc, DBG_LOAD, "Adding Ethernet MAC\n");

    FUNC1(RAMROD_COMP_WAIT, &ramrod_flags);

    /* Eth MAC is set on RSS leading client (fp[0]) */
    return (FUNC2(sc, sc->link_params.mac_addr,
                            &sc->sp_objs->mac_obj,
                            set, ECORE_ETH_MAC, &ramrod_flags));
}