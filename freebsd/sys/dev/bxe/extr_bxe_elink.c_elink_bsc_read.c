
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct bxe_softc {int dummy; } ;
typedef scalar_t__ elink_status_t ;


 int DELAY (int) ;
 int ELINK_DEBUG_P1 (struct bxe_softc*,char*,int) ;
 scalar_t__ ELINK_STATUS_ERROR ;
 scalar_t__ ELINK_STATUS_OK ;
 scalar_t__ ELINK_STATUS_TIMEOUT ;
 int MCPR_IMC_COMMAND_ENABLE ;
 int MCPR_IMC_COMMAND_IMC_STATUS_BITSHIFT ;
 int MCPR_IMC_COMMAND_OPERATION_BITSHIFT ;
 int MCPR_IMC_COMMAND_READ_OP ;
 int MCPR_IMC_COMMAND_TRANSFER_ADDRESS_BITSHIFT ;
 int MCPR_IMC_COMMAND_WRITE_OP ;
 scalar_t__ MCP_REG_MCPR_IMC_COMMAND ;
 scalar_t__ MCP_REG_MCPR_IMC_DATAREG0 ;
 scalar_t__ MCP_REG_MCPR_IMC_SLAVE_CONTROL ;
 int REG_RD (struct bxe_softc*,scalar_t__) ;
 int REG_WR (struct bxe_softc*,scalar_t__,int) ;

__attribute__((used)) static elink_status_t elink_bsc_read(struct bxe_softc *sc,
     uint8_t sl_devid,
     uint16_t sl_addr,
     uint8_t lc_addr,
     uint8_t xfer_cnt,
     uint32_t *data_array)
{
 uint32_t val, i;
 elink_status_t rc = ELINK_STATUS_OK;

 if (xfer_cnt > 16) {
  ELINK_DEBUG_P1(sc, "invalid xfer_cnt %d. Max is 16 bytes\n",
     xfer_cnt);
  return ELINK_STATUS_ERROR;
 }

 xfer_cnt = 16 - lc_addr;


 val = REG_RD(sc, MCP_REG_MCPR_IMC_COMMAND);
 val |= MCPR_IMC_COMMAND_ENABLE;
 REG_WR(sc, MCP_REG_MCPR_IMC_COMMAND, val);


 val = (sl_devid << 16) | sl_addr;
 REG_WR(sc, MCP_REG_MCPR_IMC_SLAVE_CONTROL, val);


 val = (MCPR_IMC_COMMAND_ENABLE) |
       (MCPR_IMC_COMMAND_WRITE_OP <<
  MCPR_IMC_COMMAND_OPERATION_BITSHIFT) |
  (lc_addr << MCPR_IMC_COMMAND_TRANSFER_ADDRESS_BITSHIFT) | (0);
 REG_WR(sc, MCP_REG_MCPR_IMC_COMMAND, val);


 i = 0;
 val = REG_RD(sc, MCP_REG_MCPR_IMC_COMMAND);
 while (((val >> MCPR_IMC_COMMAND_IMC_STATUS_BITSHIFT) & 0x3) != 1) {
  DELAY(10);
  val = REG_RD(sc, MCP_REG_MCPR_IMC_COMMAND);
  if (i++ > 1000) {
   ELINK_DEBUG_P1(sc, "wr 0 byte timed out after %d try\n",
        i);
   rc = ELINK_STATUS_TIMEOUT;
   break;
  }
 }
 if (rc == ELINK_STATUS_TIMEOUT)
  return rc;


 val = (MCPR_IMC_COMMAND_ENABLE) |
  (MCPR_IMC_COMMAND_READ_OP <<
  MCPR_IMC_COMMAND_OPERATION_BITSHIFT) |
  (lc_addr << MCPR_IMC_COMMAND_TRANSFER_ADDRESS_BITSHIFT) |
    (xfer_cnt);
 REG_WR(sc, MCP_REG_MCPR_IMC_COMMAND, val);


 i = 0;
 val = REG_RD(sc, MCP_REG_MCPR_IMC_COMMAND);
 while (((val >> MCPR_IMC_COMMAND_IMC_STATUS_BITSHIFT) & 0x3) != 1) {
  DELAY(10);
  val = REG_RD(sc, MCP_REG_MCPR_IMC_COMMAND);
  if (i++ > 1000) {
   ELINK_DEBUG_P1(sc, "rd op timed out after %d try\n", i);
   rc = ELINK_STATUS_TIMEOUT;
   break;
  }
 }
 if (rc == ELINK_STATUS_TIMEOUT)
  return rc;

 for (i = (lc_addr >> 2); i < 4; i++) {
  data_array[i] = REG_RD(sc, (MCP_REG_MCPR_IMC_DATAREG0 + i*4));






 }
 return rc;
}
