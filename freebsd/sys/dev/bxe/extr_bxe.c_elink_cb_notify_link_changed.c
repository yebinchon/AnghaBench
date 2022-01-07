
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bxe_softc {int dummy; } ;


 scalar_t__ MISC_REG_AEU_GENERAL_ATTN_12 ;
 int REG_WR (struct bxe_softc*,scalar_t__,int) ;
 int SC_FUNC (struct bxe_softc*) ;

void
elink_cb_notify_link_changed(struct bxe_softc *sc)
{
    REG_WR(sc, (MISC_REG_AEU_GENERAL_ATTN_12 +
                (SC_FUNC(sc) * sizeof(uint32_t))), 1);
}
