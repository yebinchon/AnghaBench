
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bxe_softc {int dummy; } ;


 int REG_RD (struct bxe_softc*,int ) ;

uint32_t
elink_cb_reg_read(struct bxe_softc *sc,
                  uint32_t reg_addr)
{
    return (REG_RD(sc, reg_addr));
}
