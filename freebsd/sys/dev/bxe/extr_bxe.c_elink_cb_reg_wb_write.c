
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct bxe_softc {int dummy; } ;


 int REG_WR_DMAE (struct bxe_softc*,int ,int *,int ) ;

void
elink_cb_reg_wb_write(struct bxe_softc *sc,
                      uint32_t offset,
                      uint32_t *wb_write,
                      uint16_t len)
{
    REG_WR_DMAE(sc, offset, wb_write, len);
}
