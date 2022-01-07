
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bxe_softc {int dummy; } ;
struct bxe_fastpath {int cl_id; int cl_qzone_id; } ;


 int BAR_USTRORM_INTMEM ;
 int CHIP_IS_E1x (struct bxe_softc*) ;
 int SC_PORT (struct bxe_softc*) ;
 scalar_t__ USTORM_RX_PRODS_E1X_OFFSET (int ,int ) ;
 scalar_t__ USTORM_RX_PRODS_E2_OFFSET (int ) ;

__attribute__((used)) static inline uint32_t
bxe_rx_ustorm_prods_offset(struct bxe_softc *sc,
                           struct bxe_fastpath *fp)
{
    uint32_t offset = BAR_USTRORM_INTMEM;

    if (!CHIP_IS_E1x(sc)) {
        offset += USTORM_RX_PRODS_E2_OFFSET(fp->cl_qzone_id);
    } else {
        offset += USTORM_RX_PRODS_E1X_OFFSET(SC_PORT(sc), fp->cl_id);
    }

    return (offset);
}
