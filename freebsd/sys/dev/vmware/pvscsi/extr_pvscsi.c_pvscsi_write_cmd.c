
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pvscsi_softc {int dummy; } ;


 int KASSERT (int,char*) ;
 int PVSCSI_REG_OFFSET_COMMAND ;
 int PVSCSI_REG_OFFSET_COMMAND_DATA ;
 int pvscsi_reg_write (struct pvscsi_softc*,int ,int) ;

__attribute__((used)) static void
pvscsi_write_cmd(struct pvscsi_softc *sc, uint32_t cmd, void *data,
   uint32_t len)
{
 uint32_t *data_ptr;
 int i;

 KASSERT(len % sizeof(uint32_t) == 0,
  ("command size not a multiple of 4"));

 data_ptr = data;
 len /= sizeof(uint32_t);

 pvscsi_reg_write(sc, PVSCSI_REG_OFFSET_COMMAND, cmd);
 for (i = 0; i < len; ++i) {
  pvscsi_reg_write(sc, PVSCSI_REG_OFFSET_COMMAND_DATA,
     data_ptr[i]);
 }
}
