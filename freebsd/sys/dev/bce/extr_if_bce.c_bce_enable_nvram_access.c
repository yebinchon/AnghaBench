
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bce_softc {int dummy; } ;


 int BCE_NVM_ACCESS_ENABLE ;
 int BCE_NVM_ACCESS_ENABLE_EN ;
 int BCE_NVM_ACCESS_ENABLE_WR_EN ;
 int BCE_VERBOSE_NVRAM ;
 int DBENTER (int ) ;
 int DBEXIT (int ) ;
 int REG_RD (struct bce_softc*,int ) ;
 int REG_WR (struct bce_softc*,int ,int) ;

__attribute__((used)) static void
bce_enable_nvram_access(struct bce_softc *sc)
{
 u32 val;

 DBENTER(BCE_VERBOSE_NVRAM);

 val = REG_RD(sc, BCE_NVM_ACCESS_ENABLE);

 REG_WR(sc, BCE_NVM_ACCESS_ENABLE, val |
     BCE_NVM_ACCESS_ENABLE_EN | BCE_NVM_ACCESS_ENABLE_WR_EN);

 DBEXIT(BCE_VERBOSE_NVRAM);
}
