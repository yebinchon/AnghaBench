
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int tmp ;
struct zyd_softc {int dummy; } ;
struct zyd_pair {int val; } ;
typedef int reg ;


 int ZYD_CMD_FLAG_READ ;
 int ZYD_CMD_IORD ;
 int htole16 (int ) ;
 int le16toh (int ) ;
 int zyd_cmd (struct zyd_softc*,int ,int *,int,struct zyd_pair*,int,int ) ;

__attribute__((used)) static int
zyd_read16(struct zyd_softc *sc, uint16_t reg, uint16_t *val)
{
 struct zyd_pair tmp;
 int error;

 reg = htole16(reg);
 error = zyd_cmd(sc, ZYD_CMD_IORD, &reg, sizeof(reg), &tmp, sizeof(tmp),
     ZYD_CMD_FLAG_READ);
 if (error == 0)
  *val = le16toh(tmp.val);
 return (error);
}
