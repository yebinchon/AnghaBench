
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uintmax_t ;
typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_6__ {void* lo; void* hi; } ;
struct TYPE_7__ {TYPE_2__ update_data_addr; } ;
struct TYPE_5__ {int type; void* conn_and_cmd_data; } ;
struct eth_spe {TYPE_3__ data; TYPE_1__ hdr; } ;
struct TYPE_8__ {scalar_t__ paddr; } ;
struct bxe_softc {int eq_spq_left; int cq_spq_left; scalar_t__ spq; scalar_t__ spq_prod_bd; TYPE_4__ spq_dma; int spq_prod_idx; } ;


 int BLOGD (struct bxe_softc*,int ,char*,int ,...) ;
 int BLOGE (struct bxe_softc*,char*) ;
 int BXE_SP (struct bxe_softc*,int ) ;
 int BXE_SP_LOCK (struct bxe_softc*) ;
 scalar_t__ BXE_SP_MAPPING (struct bxe_softc*,int ) ;
 int BXE_SP_UNLOCK (struct bxe_softc*) ;
 int DBG_SP ;
 int HW_CID (struct bxe_softc*,int) ;
 int SC_FUNC (struct bxe_softc*) ;
 int SPE_HDR_T_CMD_ID_SHIFT ;
 int SPE_HDR_T_CONN_TYPE ;
 int SPE_HDR_T_CONN_TYPE_SHIFT ;
 int SPE_HDR_T_FUNCTION_ID ;
 int SPE_HDR_T_FUNCTION_ID_SHIFT ;
 scalar_t__ U64_HI (scalar_t__) ;
 int U64_LO (scalar_t__) ;
 int atomic_load_acq_long (int *) ;
 int atomic_subtract_acq_long (int *,int) ;
 int bxe_is_contextless_ramrod (int,int) ;
 struct eth_spe* bxe_sp_get_next (struct bxe_softc*) ;
 int bxe_sp_prod_update (struct bxe_softc*) ;
 int func_rdata ;
 int htole16 (int) ;
 void* htole32 (int) ;

int
bxe_sp_post(struct bxe_softc *sc,
            int command,
            int cid,
            uint32_t data_hi,
            uint32_t data_lo,
            int cmd_type)
{
    struct eth_spe *spe;
    uint16_t type;
    int common;

    common = bxe_is_contextless_ramrod(command, cmd_type);

    BXE_SP_LOCK(sc);

    if (common) {
        if (!atomic_load_acq_long(&sc->eq_spq_left)) {
            BLOGE(sc, "EQ ring is full!\n");
            BXE_SP_UNLOCK(sc);
            return (-1);
        }
    } else {
        if (!atomic_load_acq_long(&sc->cq_spq_left)) {
            BLOGE(sc, "SPQ ring is full!\n");
            BXE_SP_UNLOCK(sc);
            return (-1);
        }
    }

    spe = bxe_sp_get_next(sc);


    spe->hdr.conn_and_cmd_data =
        htole32((command << SPE_HDR_T_CMD_ID_SHIFT) | HW_CID(sc, cid));

    type = (cmd_type << SPE_HDR_T_CONN_TYPE_SHIFT) & SPE_HDR_T_CONN_TYPE;


    type |= ((SC_FUNC(sc) << SPE_HDR_T_FUNCTION_ID_SHIFT) &
             SPE_HDR_T_FUNCTION_ID);

    spe->hdr.type = htole16(type);

    spe->data.update_data_addr.hi = htole32(data_hi);
    spe->data.update_data_addr.lo = htole32(data_lo);






    if (common) {
        atomic_subtract_acq_long(&sc->eq_spq_left, 1);
    } else {
        atomic_subtract_acq_long(&sc->cq_spq_left, 1);
    }

    BLOGD(sc, DBG_SP, "SPQE -> %#jx\n", (uintmax_t)sc->spq_dma.paddr);
    BLOGD(sc, DBG_SP, "FUNC_RDATA -> %p / %#jx\n",
          BXE_SP(sc, func_rdata), (uintmax_t)BXE_SP_MAPPING(sc, func_rdata));
    BLOGD(sc, DBG_SP,
          "SPQE[%x] (%x:%x) (cmd, common?) (%d,%d) hw_cid %x data (%x:%x) type(0x%x) left (CQ, EQ) (%lx,%lx)\n",
          sc->spq_prod_idx,
          (uint32_t)U64_HI(sc->spq_dma.paddr),
          (uint32_t)(U64_LO(sc->spq_dma.paddr) + (uint8_t *)sc->spq_prod_bd - (uint8_t *)sc->spq),
          command,
          common,
          HW_CID(sc, cid),
          data_hi,
          data_lo,
          type,
          atomic_load_acq_long(&sc->cq_spq_left),
          atomic_load_acq_long(&sc->eq_spq_left));

    bxe_sp_prod_update(sc);

    BXE_SP_UNLOCK(sc);
    return (0);
}
