
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mgb_softc {int dummy; } ;
typedef enum mgb_fct_cmd { ____Placeholder_mgb_fct_cmd } mgb_fct_cmd ;


 int CSR_WRITE_REG (struct mgb_softc*,int,int ) ;



 int MGB_FCT_DSBL (int) ;
 int MGB_FCT_ENBL (int) ;
 int MGB_FCT_RESET (int) ;
 int mgb_wait_for_bits (struct mgb_softc*,int,int ,int ) ;

__attribute__((used)) static int
mgb_fct_control(struct mgb_softc *sc, int reg, int channel,
    enum mgb_fct_cmd cmd)
{

 switch (cmd) {
 case 128:
  CSR_WRITE_REG(sc, reg, MGB_FCT_RESET(channel));
  return mgb_wait_for_bits(sc, reg, 0, MGB_FCT_RESET(channel));
 case 129:
  CSR_WRITE_REG(sc, reg, MGB_FCT_ENBL(channel));
  return (0);
 case 130:
  CSR_WRITE_REG(sc, reg, MGB_FCT_DSBL(channel));
  return mgb_wait_for_bits(sc, reg, 0, MGB_FCT_ENBL(channel));
 }
}
