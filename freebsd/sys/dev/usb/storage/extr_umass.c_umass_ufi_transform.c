
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int* cmd_data; int cmd_len; } ;
struct umass_softc {int sc_quirks; TYPE_1__ sc_transfer; } ;


 int DPRINTF (struct umass_softc*,int ,char*,...) ;




 int NO_TEST_UNIT_READY ;
 int SSS_START ;



 int UDMASS_SCSI ;
 int UDMASS_UFI ;
 int UFI_COMMAND_LENGTH ;




 int memcpy (int*,int*,int) ;
 int memset (int*,int ,int ) ;

__attribute__((used)) static uint8_t
umass_ufi_transform(struct umass_softc *sc, uint8_t *cmd_ptr,
    uint8_t cmd_len)
{
 if ((cmd_len == 0) ||
     (cmd_len > sizeof(sc->sc_transfer.cmd_data))) {
  DPRINTF(sc, UDMASS_SCSI, "Invalid command "
      "length: %d bytes\n", cmd_len);
  return (0);
 }

 sc->sc_transfer.cmd_len = UFI_COMMAND_LENGTH;


 memset(sc->sc_transfer.cmd_data, 0, UFI_COMMAND_LENGTH);

 switch (cmd_ptr[0]) {





 case 132:
  if (sc->sc_quirks & NO_TEST_UNIT_READY) {




   DPRINTF(sc, UDMASS_UFI, "Converted TEST_UNIT_READY "
       "to START_UNIT\n");

   sc->sc_transfer.cmd_data[0] = 134;
   sc->sc_transfer.cmd_data[4] = SSS_START;
   return (1);
  }
  break;

 case 136:
 case 137:
 case 147:
 case 146:
 case 134:
 case 135:
 case 142:
 case 139:
 case 141:
 case 130:
 case 143:
 case 128:
 case 131:
 case 145:
 case 144:
 case 140:
 case 129:
 case 138:
  break;






 case 133:
  return (2);

 default:
  DPRINTF(sc, UDMASS_SCSI, "Unsupported UFI "
      "command 0x%02x\n", cmd_ptr[0]);
  return (0);
 }

 memcpy(sc->sc_transfer.cmd_data, cmd_ptr, cmd_len);
 return (1);
}
