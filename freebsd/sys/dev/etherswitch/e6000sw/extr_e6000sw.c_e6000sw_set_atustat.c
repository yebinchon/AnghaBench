
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int e6000sw_softc_t ;
typedef int device_t ;


 int ATU_STATS ;
 int ATU_STATS_BIN ;
 int ATU_STATS_FLAG ;
 int REG_GLOBAL2 ;
 int e6000sw_readreg (int *,int ,int ) ;
 int e6000sw_writereg (int *,int ,int ,int) ;

__attribute__((used)) static void
e6000sw_set_atustat(device_t dev, e6000sw_softc_t *sc, int bin, int flag)
{
 uint16_t ret;

 ret = e6000sw_readreg(sc, REG_GLOBAL2, ATU_STATS);
 e6000sw_writereg(sc, REG_GLOBAL2, ATU_STATS, (bin << ATU_STATS_BIN ) |
     (flag << ATU_STATS_FLAG));
}
