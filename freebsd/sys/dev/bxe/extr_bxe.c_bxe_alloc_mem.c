
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef union cdu_context {int dummy; } cdu_context ;
struct bxe_softc {TYPE_3__* ilt; TYPE_1__* context; } ;
struct TYPE_8__ {scalar_t__ vaddr; } ;
struct TYPE_7__ {TYPE_2__* clients; int lines; int start_line; } ;
struct TYPE_6__ {int flags; int client_num; int end; int start; int page_size; } ;
struct TYPE_5__ {scalar_t__ size; TYPE_4__ vcxt_dma; union cdu_context* vcxt; } ;


 int BLOGD (struct bxe_softc*,int ,char*,...) ;
 int BLOGE (struct bxe_softc*,char*) ;
 int BXE_L2_CID_COUNT (struct bxe_softc*) ;
 int CDU_ILT_PAGE_SZ ;
 int DBG_LOAD ;
 int ILT_MEMOP_ALLOC ;
 int bxe_alloc_ilt_lines_mem (struct bxe_softc*) ;
 scalar_t__ bxe_dma_alloc (struct bxe_softc*,scalar_t__,TYPE_4__*,char*) ;
 int bxe_free_mem (struct bxe_softc*) ;
 scalar_t__ ecore_ilt_mem_op (struct bxe_softc*,int ) ;
 scalar_t__ min (int ,int) ;

__attribute__((used)) static int
bxe_alloc_mem(struct bxe_softc *sc)
{

    int context_size;
    int allocated;
    int i;
    context_size = (sizeof(union cdu_context) * BXE_L2_CID_COUNT(sc));
    for (i = 0, allocated = 0; allocated < context_size; i++) {
        sc->context[i].size = min(CDU_ILT_PAGE_SZ,
                                  (context_size - allocated));

        if (bxe_dma_alloc(sc, sc->context[i].size,
                          &sc->context[i].vcxt_dma,
                          "cdu context") != 0) {
            bxe_free_mem(sc);
            return (-1);
        }

        sc->context[i].vcxt =
            (union cdu_context *)sc->context[i].vcxt_dma.vaddr;

        allocated += sc->context[i].size;
    }

    bxe_alloc_ilt_lines_mem(sc);

    BLOGD(sc, DBG_LOAD, "ilt=%p start_line=%u lines=%p\n",
          sc->ilt, sc->ilt->start_line, sc->ilt->lines);
    {
        for (i = 0; i < 4; i++) {
            BLOGD(sc, DBG_LOAD,
                  "c%d page_size=%u start=%u end=%u num=%u flags=0x%x\n",
                  i,
                  sc->ilt->clients[i].page_size,
                  sc->ilt->clients[i].start,
                  sc->ilt->clients[i].end,
                  sc->ilt->clients[i].client_num,
                  sc->ilt->clients[i].flags);
        }
    }
    if (ecore_ilt_mem_op(sc, ILT_MEMOP_ALLOC)) {
        BLOGE(sc, "ecore_ilt_mem_op ILT_MEMOP_ALLOC failed\n");
        bxe_free_mem(sc);
        return (-1);
    }

    return (0);
}
