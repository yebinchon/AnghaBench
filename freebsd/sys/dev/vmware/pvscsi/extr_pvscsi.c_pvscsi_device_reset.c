
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pvscsi_softc {int dev; } ;
struct pvscsi_cmd_desc_reset_device {int target; } ;
typedef int cmd ;


 int DEBUG_PRINTF (int,int ,char*) ;
 int PVSCSI_CMD_RESET_DEVICE ;
 int device_printf (int ,char*,int ) ;
 int memset (struct pvscsi_cmd_desc_reset_device*,int ,int) ;
 int pvscsi_process_cmp_ring (struct pvscsi_softc*) ;
 int pvscsi_write_cmd (struct pvscsi_softc*,int ,struct pvscsi_cmd_desc_reset_device*,int) ;

__attribute__((used)) static void
pvscsi_device_reset(struct pvscsi_softc *sc, uint32_t target)
{
 struct pvscsi_cmd_desc_reset_device cmd;

 memset(&cmd, 0, sizeof(cmd));

 cmd.target = target;

 device_printf(sc->dev, "Device reset for target %u\n", target);

 pvscsi_write_cmd(sc, PVSCSI_CMD_RESET_DEVICE, &cmd, sizeof cmd);
 pvscsi_process_cmp_ring(sc);

 DEBUG_PRINTF(2, sc->dev, "device reset done\n");
}
