
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pvscsi_softc {int dummy; } ;


 int PVSCSI_CMD_SETUP_MSG_RING ;
 int PVSCSI_REG_OFFSET_COMMAND ;
 int PVSCSI_REG_OFFSET_COMMAND_STATUS ;
 int pvscsi_reg_read (struct pvscsi_softc*,int ) ;
 int pvscsi_reg_write (struct pvscsi_softc*,int ,int ) ;

__attribute__((used)) static int
pvscsi_hw_supports_msg(struct pvscsi_softc *sc)
{
 uint32_t status;

 pvscsi_reg_write(sc, PVSCSI_REG_OFFSET_COMMAND,
     PVSCSI_CMD_SETUP_MSG_RING);
 status = pvscsi_reg_read(sc, PVSCSI_REG_OFFSET_COMMAND_STATUS);

 return (status != -1);
}
