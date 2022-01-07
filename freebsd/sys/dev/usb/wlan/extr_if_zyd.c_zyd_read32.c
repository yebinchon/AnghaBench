
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
typedef int tmp ;
struct zyd_softc {int dummy; } ;
struct zyd_pair {int val; } ;
typedef int regs ;


 int ZYD_CMD_FLAG_READ ;
 int ZYD_CMD_IORD ;
 int ZYD_REG32_HI (int ) ;
 int ZYD_REG32_LO (int ) ;
 int htole16 (int ) ;
 int le16toh (int ) ;
 int zyd_cmd (struct zyd_softc*,int ,int *,int,struct zyd_pair*,int,int ) ;

__attribute__((used)) static int
zyd_read32(struct zyd_softc *sc, uint16_t reg, uint32_t *val)
{
 struct zyd_pair tmp[2];
 uint16_t regs[2];
 int error;

 regs[0] = htole16(ZYD_REG32_HI(reg));
 regs[1] = htole16(ZYD_REG32_LO(reg));
 error = zyd_cmd(sc, ZYD_CMD_IORD, regs, sizeof(regs), tmp, sizeof(tmp),
     ZYD_CMD_FLAG_READ);
 if (error == 0)
  *val = le16toh(tmp[0].val) << 16 | le16toh(tmp[1].val);
 return (error);
}
