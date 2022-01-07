
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int dummy; } ;


 int R92C_CAMCMD ;
 int R92C_CAMCMD_CLR ;
 int R92C_CAMCMD_POLLING ;
 int rtwn_write_4 (struct rtwn_softc*,int ,int) ;

void
rtwn_init_cam(struct rtwn_softc *sc)
{

 rtwn_write_4(sc, R92C_CAMCMD,
     R92C_CAMCMD_POLLING | R92C_CAMCMD_CLR);
}
