
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ubsec_softc {int dummy; } ;


 int BS_CTRL ;
 int volatile BS_CTRL_RESET ;
 int DELAY (int) ;
 int READ_REG (struct ubsec_softc*,int ) ;
 int WRITE_REG (struct ubsec_softc*,int ,int volatile) ;

__attribute__((used)) static void
ubsec_reset_board(struct ubsec_softc *sc)
{
    volatile u_int32_t ctrl;

    ctrl = READ_REG(sc, BS_CTRL);
    ctrl |= BS_CTRL_RESET;
    WRITE_REG(sc, BS_CTRL, ctrl);




    DELAY(10);
}
