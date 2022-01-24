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
typedef  int uint8_t ;
struct bxe_softc {int /*<<< orphan*/  pcie_device; int /*<<< orphan*/  pcie_bus; } ;
struct bxe_prev_list_node {scalar_t__ aer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DBG_LOAD ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*) ; 
 int TRUE ; 
 int /*<<< orphan*/  bxe_prev_mtx ; 
 struct bxe_prev_list_node* FUNC2 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static uint8_t
FUNC5(struct bxe_softc *sc)
{
    struct bxe_prev_list_node *tmp;
    int rc = FALSE;

    FUNC3(&bxe_prev_mtx);

    tmp = FUNC2(sc);
    if (tmp) {
        if (tmp->aer) {
            FUNC0(sc, DBG_LOAD,
                  "Path %d/%d/%d was marked by AER\n",
                  sc->pcie_bus, sc->pcie_device, FUNC1(sc));
        } else {
            rc = TRUE;
            FUNC0(sc, DBG_LOAD,
                  "Path %d/%d/%d was already cleaned from previous drivers\n",
                  sc->pcie_bus, sc->pcie_device, FUNC1(sc));
        }
    }

    FUNC4(&bxe_prev_mtx);

    return (rc);
}