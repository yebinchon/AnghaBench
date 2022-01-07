
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dmae_cmd {int dummy; } ;
struct bxe_softc {int dummy; } ;


 int DMAE_REG_CMD_MEM ;
 int REG_WR (struct bxe_softc*,int,int) ;
 int* dmae_reg_go_c ;

void
bxe_post_dmae(struct bxe_softc *sc,
              struct dmae_cmd *dmae,
              int idx)
{
    uint32_t cmd_offset;
    int i;

    cmd_offset = (DMAE_REG_CMD_MEM + (sizeof(struct dmae_cmd) * idx));
    for (i = 0; i < ((sizeof(struct dmae_cmd) / 4)); i++) {
        REG_WR(sc, (cmd_offset + (i * 4)), *(((uint32_t *)dmae) + i));
    }

    REG_WR(sc, dmae_reg_go_c[idx], 1);
}
