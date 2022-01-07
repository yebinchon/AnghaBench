
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int dummy; } ;


 int R92C_PBP ;
 int R92C_PBP_512 ;
 int R92C_PBP_PSTX_M ;
 int R92C_PBP_PSTX_S ;
 scalar_t__ rtwn_setbits_1 (struct rtwn_softc*,int ,int ,int) ;

int
r12a_set_page_size(struct rtwn_softc *sc)
{
 return (rtwn_setbits_1(sc, R92C_PBP, R92C_PBP_PSTX_M,
     R92C_PBP_512 << R92C_PBP_PSTX_S) == 0);
}
