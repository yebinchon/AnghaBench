
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct zyd_softc {int dummy; } ;


 int ZYD_MAC_MISC ;
 int ZYD_UNLOCK_PHY_REGS ;
 int zyd_read32_m (struct zyd_softc*,int ,int *) ;
 int zyd_write32_m (struct zyd_softc*,int ,int ) ;

__attribute__((used)) static int
zyd_lock_phy(struct zyd_softc *sc)
{
 int error;
 uint32_t tmp;

 zyd_read32_m(sc, ZYD_MAC_MISC, &tmp);
 tmp &= ~ZYD_UNLOCK_PHY_REGS;
 zyd_write32_m(sc, ZYD_MAC_MISC, tmp);
fail:
 return (error);
}
