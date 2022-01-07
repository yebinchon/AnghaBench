
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2860_softc {int dummy; } ;


 int CCK (int) ;
 int OFDM (int) ;
 int RAL_WRITE (struct rt2860_softc*,int ,int) ;
 int RT2860_LG_FBK_CFG0 ;
 int RT2860_LG_FBK_CFG1 ;

__attribute__((used)) static void
rt2860_enable_mrr(struct rt2860_softc *sc)
{


 RAL_WRITE(sc, RT2860_LG_FBK_CFG0,
     (1U << 3 | (6)) << 28 |
     (1U << 3 | (5)) << 24 |
     (1U << 3 | (4)) << 20 |
     (1U << 3 | (3)) << 16 |
     (1U << 3 | (2)) << 12 |
     (1U << 3 | (1)) << 8 |
     (1U << 3 | (0)) << 4 |
     (1U << 3 | (0)));

 RAL_WRITE(sc, RT2860_LG_FBK_CFG1,
     (2) << 12 |
     (1) << 8 |
     (0) << 4 |
     (0));


}
