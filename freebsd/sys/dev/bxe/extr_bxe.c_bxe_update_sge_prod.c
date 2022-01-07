
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union eth_sgl_or_raw_data {int * sgl; } ;
typedef size_t uint16_t ;
struct bxe_softc {int dummy; } ;
struct bxe_fastpath {size_t last_max_sge; size_t rx_sge_prod; int index; int * sge_mask; } ;


 int BIT_VEC64_CLEAR_BIT (int *,size_t) ;
 int BIT_VEC64_ELEM_ONE_MASK ;
 size_t BIT_VEC64_ELEM_SHIFT ;
 size_t BIT_VEC64_ELEM_SZ ;
 int BLOGD (struct bxe_softc*,int ,char*,int ,size_t,size_t) ;
 int DBG_LRO ;
 size_t RX_SGE (size_t) ;
 size_t RX_SGE_NEXT_MASK_ELEM (size_t) ;
 scalar_t__ __predict_true (int ) ;
 int bxe_clear_sge_mask_next_elems (struct bxe_fastpath*) ;
 int bxe_update_last_max_sge (struct bxe_fastpath*,size_t) ;
 size_t le16toh (int ) ;

__attribute__((used)) static inline void
bxe_update_sge_prod(struct bxe_softc *sc,
                    struct bxe_fastpath *fp,
                    uint16_t sge_len,
                    union eth_sgl_or_raw_data *cqe)
{
    uint16_t last_max, last_elem, first_elem;
    uint16_t delta = 0;
    uint16_t i;

    if (!sge_len) {
        return;
    }


    for (i = 0; i < sge_len; i++) {
        BIT_VEC64_CLEAR_BIT(fp->sge_mask,
                            RX_SGE(le16toh(cqe->sgl[i])));
    }

    BLOGD(sc, DBG_LRO,
          "fp[%02d] fp_cqe->sgl[%d] = %d\n",
          fp->index, sge_len - 1,
          le16toh(cqe->sgl[sge_len - 1]));


    bxe_update_last_max_sge(fp,
                            le16toh(cqe->sgl[sge_len - 1]));

    last_max = RX_SGE(fp->last_max_sge);
    last_elem = last_max >> BIT_VEC64_ELEM_SHIFT;
    first_elem = RX_SGE(fp->rx_sge_prod) >> BIT_VEC64_ELEM_SHIFT;


    if (last_elem + 1 != first_elem) {
        last_elem++;
    }


    for (i = first_elem; i != last_elem; i = RX_SGE_NEXT_MASK_ELEM(i)) {
        if (__predict_true(fp->sge_mask[i])) {
            break;
        }

        fp->sge_mask[i] = BIT_VEC64_ELEM_ONE_MASK;
        delta += BIT_VEC64_ELEM_SZ;
    }

    if (delta > 0) {
        fp->rx_sge_prod += delta;

        bxe_clear_sge_mask_next_elems(fp);
    }

    BLOGD(sc, DBG_LRO,
          "fp[%02d] fp->last_max_sge=%d fp->rx_sge_prod=%d\n",
          fp->index, fp->last_max_sge, fp->rx_sge_prod);
}
