
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct zyd_softc {int dummy; } ;
struct zyd_pair {void* val; void* reg; } ;
typedef int pair ;


 int ZYD_CMD_IOWR ;
 void* htole16 (int ) ;
 int zyd_cmd (struct zyd_softc*,int ,struct zyd_pair*,int,int *,int ,int ) ;

__attribute__((used)) static int
zyd_write16(struct zyd_softc *sc, uint16_t reg, uint16_t val)
{
 struct zyd_pair pair;

 pair.reg = htole16(reg);
 pair.val = htole16(val);

 return zyd_cmd(sc, ZYD_CMD_IOWR, &pair, sizeof(pair), ((void*)0), 0, 0);
}
