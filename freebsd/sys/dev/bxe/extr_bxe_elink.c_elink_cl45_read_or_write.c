
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct elink_phy {int dummy; } ;
struct bxe_softc {int dummy; } ;


 int elink_cl45_read (struct bxe_softc*,struct elink_phy*,int ,int,int*) ;
 int elink_cl45_write (struct bxe_softc*,struct elink_phy*,int ,int,int) ;

__attribute__((used)) static void elink_cl45_read_or_write(struct bxe_softc *sc, struct elink_phy *phy,
         uint8_t devad, uint16_t reg, uint16_t or_val)
{
 uint16_t val;
 elink_cl45_read(sc, phy, devad, reg, &val);
 elink_cl45_write(sc, phy, devad, reg, val | or_val);
}
