
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pvscsi_softc {int dummy; } ;


 int PVSCSI_CMD_GET_MAX_TARGETS ;
 int PVSCSI_REG_OFFSET_COMMAND_STATUS ;
 int pvscsi_reg_read (struct pvscsi_softc*,int ) ;
 int pvscsi_write_cmd (struct pvscsi_softc*,int ,int *,int ) ;

__attribute__((used)) static uint32_t
pvscsi_get_max_targets(struct pvscsi_softc *sc)
{
 uint32_t max_targets;

 pvscsi_write_cmd(sc, PVSCSI_CMD_GET_MAX_TARGETS, ((void*)0), 0);

 max_targets = pvscsi_reg_read(sc, PVSCSI_REG_OFFSET_COMMAND_STATUS);

 if (max_targets == ~0) {
  max_targets = 16;
 }

 return (max_targets);
}
