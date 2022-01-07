
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {scalar_t__ running_index; } ;
struct TYPE_4__ {scalar_t__ attn_bits_index; } ;
struct host_sp_status_block {TYPE_1__ sp_sb; TYPE_2__ atten_status_block; } ;
struct bxe_softc {scalar_t__ def_att_idx; scalar_t__ def_idx; struct host_sp_status_block* def_sb; } ;


 int BXE_DEF_SB_ATT_IDX ;
 int BXE_DEF_SB_IDX ;
 int mb () ;

__attribute__((used)) static uint16_t
bxe_update_dsb_idx(struct bxe_softc *sc)
{
    struct host_sp_status_block *def_sb = sc->def_sb;
    uint16_t rc = 0;

    mb();

    if (sc->def_att_idx != def_sb->atten_status_block.attn_bits_index) {
        sc->def_att_idx = def_sb->atten_status_block.attn_bits_index;
        rc |= BXE_DEF_SB_ATT_IDX;
    }

    if (sc->def_idx != def_sb->sp_sb.running_index) {
        sc->def_idx = def_sb->sp_sb.running_index;
        rc |= BXE_DEF_SB_IDX;
    }

    mb();

    return (rc);
}
