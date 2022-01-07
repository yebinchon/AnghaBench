
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pvscsi_softc {int dummy; } ;
struct pvscsi_cmd_desc_setup_req_call {int enable; } ;
typedef int cmd ;


 int PVSCSI_CMD_SETUP_REQCALLTHRESHOLD ;
 int PVSCSI_REG_OFFSET_COMMAND ;
 int PVSCSI_REG_OFFSET_COMMAND_STATUS ;
 int bzero (struct pvscsi_cmd_desc_setup_req_call*,int) ;
 int pvscsi_get_tunable (struct pvscsi_softc*,char*,int ) ;
 int pvscsi_reg_read (struct pvscsi_softc*,int ) ;
 int pvscsi_reg_write (struct pvscsi_softc*,int ,int ) ;
 int pvscsi_use_req_call_threshold ;
 int pvscsi_write_cmd (struct pvscsi_softc*,int ,struct pvscsi_cmd_desc_setup_req_call*,int) ;

__attribute__((used)) static int pvscsi_setup_req_call(struct pvscsi_softc *sc, uint32_t enable)
{
 uint32_t status;
 struct pvscsi_cmd_desc_setup_req_call cmd;

 if (!pvscsi_get_tunable(sc, "pvscsi_use_req_call_threshold",
     pvscsi_use_req_call_threshold)) {
  return (0);
 }

 pvscsi_reg_write(sc, PVSCSI_REG_OFFSET_COMMAND,
     PVSCSI_CMD_SETUP_REQCALLTHRESHOLD);
 status = pvscsi_reg_read(sc, PVSCSI_REG_OFFSET_COMMAND_STATUS);

 if (status != -1) {
  bzero(&cmd, sizeof(cmd));
  cmd.enable = enable;
  pvscsi_write_cmd(sc, PVSCSI_CMD_SETUP_REQCALLTHRESHOLD,
      &cmd, sizeof(cmd));
  status = pvscsi_reg_read(sc, PVSCSI_REG_OFFSET_COMMAND_STATUS);

  return (status != 0);
 } else {
  return (0);
 }
}
