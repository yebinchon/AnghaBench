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
typedef  scalar_t__ uint8_t ;
struct bxe_softc {int /*<<< orphan*/  pcie_device; int /*<<< orphan*/  pcie_bus; } ;
struct bxe_prev_list_node {int undi; scalar_t__ aer; int /*<<< orphan*/  path; int /*<<< orphan*/  slot; int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,char*) ; 
 int /*<<< orphan*/  DBG_LOAD ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct bxe_prev_list_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*) ; 
 int FUNC4 (struct bxe_softc*) ; 
 int /*<<< orphan*/  bxe_prev_list ; 
 int /*<<< orphan*/  bxe_prev_mtx ; 
 struct bxe_prev_list_node* FUNC5 (struct bxe_softc*) ; 
 struct bxe_prev_list_node* FUNC6 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  node ; 

__attribute__((used)) static int
FUNC9(struct bxe_softc *sc,
                   uint8_t          after_undi)
{
    struct bxe_prev_list_node *tmp;

    FUNC7(&bxe_prev_mtx);

    /* Check whether the entry for this path already exists */
    tmp = FUNC5(sc);
    if (tmp) {
        if (!tmp->aer) {
            FUNC0(sc, DBG_LOAD,
                  "Re-marking AER in path %d/%d/%d\n",
                  sc->pcie_bus, sc->pcie_device, FUNC3(sc));
        } else {
            FUNC0(sc, DBG_LOAD,
                  "Removing AER indication from path %d/%d/%d\n",
                  sc->pcie_bus, sc->pcie_device, FUNC3(sc));
            tmp->aer = 0;
        }

        FUNC8(&bxe_prev_mtx);
        return (0);
    }

    FUNC8(&bxe_prev_mtx);

    /* Create an entry for this path and add it */
    tmp = FUNC6(sizeof(struct bxe_prev_list_node), M_DEVBUF,
                 (M_NOWAIT | M_ZERO));
    if (!tmp) {
        FUNC1(sc, "Failed to allocate 'bxe_prev_list_node'\n");
        return (-1);
    }

    tmp->bus  = sc->pcie_bus;
    tmp->slot = sc->pcie_device;
    tmp->path = FUNC3(sc);
    tmp->aer  = 0;
    tmp->undi = after_undi ? (1 << FUNC4(sc)) : 0;

    FUNC7(&bxe_prev_mtx);

    FUNC0(sc, DBG_LOAD,
          "Marked path %d/%d/%d - finished previous unload\n",
          sc->pcie_bus, sc->pcie_device, FUNC3(sc));
    FUNC2(&bxe_prev_list, tmp, node);

    FUNC8(&bxe_prev_mtx);

    return (0);
}