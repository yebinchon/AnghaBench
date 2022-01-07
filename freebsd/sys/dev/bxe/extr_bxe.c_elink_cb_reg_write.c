
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bxe_softc {int dummy; } ;


 int REG_WR (struct bxe_softc*,int ,int ) ;

void
elink_cb_reg_write(struct bxe_softc *sc,
                   uint32_t reg_addr,
                   uint32_t val)
{
    REG_WR(sc, reg_addr, val);
}
