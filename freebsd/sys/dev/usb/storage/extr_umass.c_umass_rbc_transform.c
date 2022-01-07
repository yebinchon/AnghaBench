
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int cmd_len; int cmd_data; } ;
struct umass_softc {int sc_quirks; TYPE_1__ sc_transfer; } ;


 int DPRINTF (struct umass_softc*,int ,char*,int) ;




 int RBC_PAD_TO_12 ;






 int UDMASS_SCSI ;



 int memcpy (int ,int*,int) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static uint8_t
umass_rbc_transform(struct umass_softc *sc, uint8_t *cmd_ptr, uint8_t cmd_len)
{
 if ((cmd_len == 0) ||
     (cmd_len > sizeof(sc->sc_transfer.cmd_data))) {
  DPRINTF(sc, UDMASS_SCSI, "Invalid command "
      "length: %d bytes\n", cmd_len);
  return (0);
 }
 switch (cmd_ptr[0]) {

 case 136:
 case 135:
 case 133:
 case 132:
 case 129:
 case 130:
 case 140:
 case 139:
 case 138:
 case 131:
 case 128:





 case 134:
 case 137:

  memcpy(sc->sc_transfer.cmd_data, cmd_ptr, cmd_len);

  if ((sc->sc_quirks & RBC_PAD_TO_12) && (cmd_len < 12)) {
   memset(sc->sc_transfer.cmd_data + cmd_len,
       0, 12 - cmd_len);
   cmd_len = 12;
  }
  sc->sc_transfer.cmd_len = cmd_len;
  return (1);


 default:
  DPRINTF(sc, UDMASS_SCSI, "Unsupported RBC "
      "command 0x%02x\n", cmd_ptr[0]);
  return (0);
 }
}
