#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  union cdu_context {int dummy; } cdu_context ;
struct bxe_softc {TYPE_3__* ilt; TYPE_1__* context; } ;
struct TYPE_8__ {scalar_t__ vaddr; } ;
struct TYPE_7__ {TYPE_2__* clients; int /*<<< orphan*/  lines; int /*<<< orphan*/  start_line; } ;
struct TYPE_6__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  client_num; int /*<<< orphan*/  end; int /*<<< orphan*/  start; int /*<<< orphan*/  page_size; } ;
struct TYPE_5__ {scalar_t__ size; TYPE_4__ vcxt_dma; union cdu_context* vcxt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,char*) ; 
 int FUNC2 (struct bxe_softc*) ; 
 int /*<<< orphan*/  CDU_ILT_PAGE_SZ ; 
 int /*<<< orphan*/  DBG_LOAD ; 
 int /*<<< orphan*/  ILT_MEMOP_ALLOC ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*) ; 
 scalar_t__ FUNC4 (struct bxe_softc*,scalar_t__,TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct bxe_softc*) ; 
 scalar_t__ FUNC6 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC8(struct bxe_softc *sc)
{

    int context_size;
    int allocated;
    int i;

    /*
     * Allocate memory for CDU context:
     * This memory is allocated separately and not in the generic ILT
     * functions because CDU differs in few aspects:
     * 1. There can be multiple entities allocating memory for context -
     * regular L2, CNIC, and SRIOV drivers. Each separately controls
     * its own ILT lines.
     * 2. Since CDU page-size is not a single 4KB page (which is the case
     * for the other ILT clients), to be efficient we want to support
     * allocation of sub-page-size in the last entry.
     * 3. Context pointers are used by the driver to pass to FW / update
     * the context (for the other ILT clients the pointers are used just to
     * free the memory during unload).
     */
    context_size = (sizeof(union cdu_context) * FUNC2(sc));
    for (i = 0, allocated = 0; allocated < context_size; i++) {
        sc->context[i].size = FUNC7(CDU_ILT_PAGE_SZ,
                                  (context_size - allocated));

        if (FUNC4(sc, sc->context[i].size,
                          &sc->context[i].vcxt_dma,
                          "cdu context") != 0) {
            FUNC5(sc);
            return (-1);
        }

        sc->context[i].vcxt =
            (union cdu_context *)sc->context[i].vcxt_dma.vaddr;

        allocated += sc->context[i].size;
    }

    FUNC3(sc);

    FUNC0(sc, DBG_LOAD, "ilt=%p start_line=%u lines=%p\n",
          sc->ilt, sc->ilt->start_line, sc->ilt->lines);
    {
        for (i = 0; i < 4; i++) {
            FUNC0(sc, DBG_LOAD,
                  "c%d page_size=%u start=%u end=%u num=%u flags=0x%x\n",
                  i,
                  sc->ilt->clients[i].page_size,
                  sc->ilt->clients[i].start,
                  sc->ilt->clients[i].end,
                  sc->ilt->clients[i].client_num,
                  sc->ilt->clients[i].flags);
        }
    }
    if (FUNC6(sc, ILT_MEMOP_ALLOC)) {
        FUNC1(sc, "ecore_ilt_mem_op ILT_MEMOP_ALLOC failed\n");
        FUNC5(sc);
        return (-1);
    }

    return (0);
}