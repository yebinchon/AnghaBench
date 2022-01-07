
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct run_softc {int dummy; } ;


 int CCK (int) ;
 int OFDM (int) ;
 int RT2860_LG_FBK_CFG0 ;
 int RT2860_LG_FBK_CFG1 ;
 int run_write (struct run_softc*,int ,int) ;

__attribute__((used)) static void
run_enable_mrr(struct run_softc *sc)
{


 run_write(sc, RT2860_LG_FBK_CFG0,
     (1 << 3 | (6)) << 28 |
     (1 << 3 | (5)) << 24 |
     (1 << 3 | (4)) << 20 |
     (1 << 3 | (3)) << 16 |
     (1 << 3 | (2)) << 12 |
     (1 << 3 | (1)) << 8 |
     (1 << 3 | (0)) << 4 |
     (1 << 3 | (0)));

 run_write(sc, RT2860_LG_FBK_CFG1,
     (2) << 12 |
     (1) << 8 |
     (0) << 4 |
     (0));


}
