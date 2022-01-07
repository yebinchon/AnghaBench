
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int* cmd_data; int cmd_len; } ;
struct umass_softc {int sc_quirks; TYPE_1__ sc_transfer; } ;


 int ATAPI_COMMAND_LENGTH ;
 int DPRINTF (struct umass_softc*,int ,char*,...) ;
 int FORCE_SHORT_INQUIRY ;



 int NO_TEST_UNIT_READY ;
 int SHORT_INQUIRY_LENGTH ;
 int SSS_START ;



 int UDMASS_SCSI ;


 int memcpy (int*,int*,int) ;
 int memset (int*,int ,int ) ;

__attribute__((used)) static uint8_t
umass_atapi_transform(struct umass_softc *sc, uint8_t *cmd_ptr,
    uint8_t cmd_len)
{
 if ((cmd_len == 0) ||
     (cmd_len > sizeof(sc->sc_transfer.cmd_data))) {
  DPRINTF(sc, UDMASS_SCSI, "Invalid command "
      "length: %d bytes\n", cmd_len);
  return (0);
 }

 sc->sc_transfer.cmd_len = ATAPI_COMMAND_LENGTH;


 memset(sc->sc_transfer.cmd_data, 0, ATAPI_COMMAND_LENGTH);

 switch (cmd_ptr[0]) {





 case 144:




  if (sc->sc_quirks & FORCE_SHORT_INQUIRY) {
   memcpy(sc->sc_transfer.cmd_data, cmd_ptr, cmd_len);

   sc->sc_transfer.cmd_data[4] = SHORT_INQUIRY_LENGTH;
   return (1);
  }
  break;

 case 130:
  if (sc->sc_quirks & NO_TEST_UNIT_READY) {
   DPRINTF(sc, UDMASS_SCSI, "Converted TEST_UNIT_READY "
       "to START_UNIT\n");
   sc->sc_transfer.cmd_data[0] = 132;
   sc->sc_transfer.cmd_data[4] = SSS_START;
   return (1);
  }
  break;

 case 134:
 case 135:
 case 132:
 case 133:
 case 140:
 case 136:
 case 139:
 case 129:
 case 141:
 case 131:
 case 143:
 case 142:
 case 137:
 case 0x42:
 case 0x43:
 case 0x44:
 case 0x47:
 case 0x48:
 case 0x49:
 case 0x4b:
 case 0x51:
 case 0x52:
 case 0x54:
 case 0x59:
 case 0x5b:
 case 0x5c:
 case 0x5d:
 case 0xa1:
 case 0xa5:
 case 0xa6:
 case 0xad:
 case 0xbb:
 case 0xe5:
  break;

 case 138:
 case 128:
 default:
  DPRINTF(sc, UDMASS_SCSI, "Unsupported ATAPI "
      "command 0x%02x - trying anyway\n",
      cmd_ptr[0]);
  break;
 }

 memcpy(sc->sc_transfer.cmd_data, cmd_ptr, cmd_len);
 return (1);
}
