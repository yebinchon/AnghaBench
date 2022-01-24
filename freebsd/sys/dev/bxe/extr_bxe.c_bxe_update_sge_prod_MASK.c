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
union eth_sgl_or_raw_data {int /*<<< orphan*/ * sgl; } ;
typedef  size_t uint16_t ;
struct bxe_softc {int dummy; } ;
struct bxe_fastpath {size_t last_max_sge; size_t rx_sge_prod; int /*<<< orphan*/  index; int /*<<< orphan*/ * sge_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  BIT_VEC64_ELEM_ONE_MASK ; 
 size_t BIT_VEC64_ELEM_SHIFT ; 
 size_t BIT_VEC64_ELEM_SZ ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  DBG_LRO ; 
 size_t FUNC2 (size_t) ; 
 size_t FUNC3 (size_t) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bxe_fastpath*) ; 
 int /*<<< orphan*/  FUNC6 (struct bxe_fastpath*,size_t) ; 
 size_t FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC8(struct bxe_softc          *sc,
                    struct bxe_fastpath       *fp,
                    uint16_t                  sge_len,
                    union eth_sgl_or_raw_data *cqe)
{
    uint16_t last_max, last_elem, first_elem;
    uint16_t delta = 0;
    uint16_t i;

    if (!sge_len) {
        return;
    }

    /* first mark all used pages */
    for (i = 0; i < sge_len; i++) {
        FUNC0(fp->sge_mask,
                            FUNC2(FUNC7(cqe->sgl[i])));
    }

    FUNC1(sc, DBG_LRO,
          "fp[%02d] fp_cqe->sgl[%d] = %d\n",
          fp->index, sge_len - 1,
          FUNC7(cqe->sgl[sge_len - 1]));

    /* assume that the last SGE index is the biggest */
    FUNC6(fp,
                            FUNC7(cqe->sgl[sge_len - 1]));

    last_max = FUNC2(fp->last_max_sge);
    last_elem = last_max >> BIT_VEC64_ELEM_SHIFT;
    first_elem = FUNC2(fp->rx_sge_prod) >> BIT_VEC64_ELEM_SHIFT;

    /* if ring is not full */
    if (last_elem + 1 != first_elem) {
        last_elem++;
    }

    /* now update the prod */
    for (i = first_elem; i != last_elem; i = FUNC3(i)) {
        if (FUNC4(fp->sge_mask[i])) {
            break;
        }

        fp->sge_mask[i] = BIT_VEC64_ELEM_ONE_MASK;
        delta += BIT_VEC64_ELEM_SZ;
    }

    if (delta > 0) {
        fp->rx_sge_prod += delta;
        /* clear page-end entries */
        FUNC5(fp);
    }

    FUNC1(sc, DBG_LRO,
          "fp[%02d] fp->last_max_sge=%d fp->rx_sge_prod=%d\n",
          fp->index, fp->last_max_sge, fp->rx_sge_prod);
}