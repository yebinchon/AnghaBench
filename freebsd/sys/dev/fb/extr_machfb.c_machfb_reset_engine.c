
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct machfb_softc {int dummy; } ;


 int BUS_CNTL ;
 int BUS_FIFO_ERR_ACK ;
 int BUS_HOST_ERR_ACK ;
 int GEN_TEST_CNTL ;
 int GUI_ENGINE_ENABLE ;
 int regr (struct machfb_softc*,int ) ;
 int regw (struct machfb_softc*,int ,int) ;

__attribute__((used)) static void
machfb_reset_engine(struct machfb_softc *sc)
{


 regw(sc, GEN_TEST_CNTL, regr(sc, GEN_TEST_CNTL) & ~GUI_ENGINE_ENABLE);


 regw(sc, GEN_TEST_CNTL, regr(sc, GEN_TEST_CNTL) | GUI_ENGINE_ENABLE);





 regw(sc, BUS_CNTL, regr(sc, BUS_CNTL) | BUS_HOST_ERR_ACK |
     BUS_FIFO_ERR_ACK);
}
