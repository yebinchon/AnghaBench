
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct zyd_softc {int dummy; } ;
struct zyd_pair {void* val; void* reg; } ;
typedef int pair ;


 int ZYD_CMD_IOWR ;
 int ZYD_REG32_HI (int ) ;
 int ZYD_REG32_LO (int ) ;
 void* htole16 (int) ;
 int zyd_cmd (struct zyd_softc*,int ,struct zyd_pair*,int,int *,int ,int ) ;

__attribute__((used)) static int
zyd_write32(struct zyd_softc *sc, uint16_t reg, uint32_t val)
{
 struct zyd_pair pair[2];

 pair[0].reg = htole16(ZYD_REG32_HI(reg));
 pair[0].val = htole16(val >> 16);
 pair[1].reg = htole16(ZYD_REG32_LO(reg));
 pair[1].val = htole16(val & 0xffff);

 return zyd_cmd(sc, ZYD_CMD_IOWR, pair, sizeof(pair), ((void*)0), 0, 0);
}
