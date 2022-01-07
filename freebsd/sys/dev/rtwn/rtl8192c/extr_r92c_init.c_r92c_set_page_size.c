
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int dummy; } ;


 int R92C_PBP ;
 int R92C_PBP_128 ;
 int R92C_PBP_PSRX ;
 int R92C_PBP_PSTX ;
 int SM (int ,int ) ;
 scalar_t__ rtwn_write_1 (struct rtwn_softc*,int ,int) ;

int
r92c_set_page_size(struct rtwn_softc *sc)
{
 return (rtwn_write_1(sc, R92C_PBP, SM(R92C_PBP_PSRX, R92C_PBP_128) |
     SM(R92C_PBP_PSTX, R92C_PBP_128)) == 0);
}
