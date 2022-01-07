
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int cmd_len; int * cmd_data; } ;
struct umass_softc {int sc_quirks; TYPE_1__ sc_transfer; } ;


 int DPRINTF (struct umass_softc*,int ,char*,...) ;
 int FORCE_SHORT_INQUIRY ;

 int NO_TEST_UNIT_READY ;
 int SHORT_INQUIRY_LENGTH ;
 int SSS_START ;
 int START_STOP_UNIT ;

 int UDMASS_SCSI ;
 int memcpy (int *,int*,int) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static uint8_t
umass_scsi_transform(struct umass_softc *sc, uint8_t *cmd_ptr,
    uint8_t cmd_len)
{
 if ((cmd_len == 0) ||
     (cmd_len > sizeof(sc->sc_transfer.cmd_data))) {
  DPRINTF(sc, UDMASS_SCSI, "Invalid command "
      "length: %d bytes\n", cmd_len);
  return (0);
 }
 sc->sc_transfer.cmd_len = cmd_len;

 switch (cmd_ptr[0]) {
 case 128:
  if (sc->sc_quirks & NO_TEST_UNIT_READY) {
   DPRINTF(sc, UDMASS_SCSI, "Converted TEST_UNIT_READY "
       "to START_UNIT\n");
   memset(sc->sc_transfer.cmd_data, 0, cmd_len);
   sc->sc_transfer.cmd_data[0] = START_STOP_UNIT;
   sc->sc_transfer.cmd_data[4] = SSS_START;
   return (1);
  }
  break;

 case 129:




  if (sc->sc_quirks & FORCE_SHORT_INQUIRY) {
   memcpy(sc->sc_transfer.cmd_data, cmd_ptr, cmd_len);
   sc->sc_transfer.cmd_data[4] = SHORT_INQUIRY_LENGTH;
   return (1);
  }
  break;
 }

 memcpy(sc->sc_transfer.cmd_data, cmd_ptr, cmd_len);
 return (1);
}
