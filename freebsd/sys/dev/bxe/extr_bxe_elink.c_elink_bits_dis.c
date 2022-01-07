
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bxe_softc {int dummy; } ;


 int REG_RD (struct bxe_softc*,int ) ;
 int REG_WR (struct bxe_softc*,int ,int ) ;

__attribute__((used)) static uint32_t elink_bits_dis(struct bxe_softc *sc, uint32_t reg, uint32_t bits)
{
 uint32_t val = REG_RD(sc, reg);

 val &= ~bits;
 REG_WR(sc, reg, val);
 return val;
}
