
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mgb_softc {int dummy; } ;
typedef enum mgb_dmac_cmd { ____Placeholder_mgb_dmac_cmd } mgb_dmac_cmd ;


 int CSR_WRITE_REG (struct mgb_softc*,int ,int ) ;



 int MGB_DMAC_CMD ;
 int MGB_DMAC_CMD_RESET (int,int) ;
 int MGB_DMAC_CMD_START (int,int) ;
 int MGB_DMAC_CMD_STOP (int,int) ;
 int mgb_wait_for_bits (struct mgb_softc*,int ,int ,int ) ;

__attribute__((used)) static int
mgb_dmac_control(struct mgb_softc *sc, int start, int channel,
    enum mgb_dmac_cmd cmd)
{
 int error = 0;

 switch (cmd) {
 case 130:
  CSR_WRITE_REG(sc, MGB_DMAC_CMD,
      MGB_DMAC_CMD_RESET(start, channel));
  error = mgb_wait_for_bits(sc, MGB_DMAC_CMD, 0,
      MGB_DMAC_CMD_RESET(start, channel));
  break;

 case 129:




  error = mgb_dmac_control(sc, start, channel, 128);
  if (error != 0)
   return error;
  CSR_WRITE_REG(sc, MGB_DMAC_CMD,
      MGB_DMAC_CMD_START(start, channel));
  break;

 case 128:
  CSR_WRITE_REG(sc, MGB_DMAC_CMD,
      MGB_DMAC_CMD_STOP(start, channel));
  error = mgb_wait_for_bits(sc, MGB_DMAC_CMD,
      MGB_DMAC_CMD_STOP(start, channel),
      MGB_DMAC_CMD_START(start, channel));
  break;
 }
 return error;
}
