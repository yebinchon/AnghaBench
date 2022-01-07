
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_start_stop_unit {int how; } ;
struct cfumass_softc {int sc_current_status; } ;


 int CFUMASS_DEBUG (struct cfumass_softc*,char*,...) ;
 int CFUMASS_T_STATUS ;
 int CFUMASS_WARN (struct cfumass_softc*,char*) ;
 int SSS_LOEJ ;
 int SSS_PC_MASK ;
 int SSS_START ;

 int cfumass_transfer_start (struct cfumass_softc*,int ) ;
 int ignore_stop ;

__attribute__((used)) static int
cfumass_quirk(struct cfumass_softc *sc, unsigned char *cdb, int cdb_len)
{
 struct scsi_start_stop_unit *sssu;

 switch (cdb[0]) {
 case 128:







  if (cdb_len < sizeof(*sssu)) {
   CFUMASS_DEBUG(sc, "received START STOP UNIT with "
       "bCDBLength %d, should be %zd",
       cdb_len, sizeof(*sssu));
   break;
  }

  sssu = (struct scsi_start_stop_unit *)cdb;
  if ((sssu->how & SSS_PC_MASK) != 0)
   break;

  if ((sssu->how & SSS_START) != 0)
   break;

  if ((sssu->how & SSS_LOEJ) != 0)
   break;

  if (ignore_stop == 0) {
   break;
  } else if (ignore_stop == 1) {
   CFUMASS_WARN(sc, "ignoring START STOP UNIT request");
  } else {
   CFUMASS_DEBUG(sc, "ignoring START STOP UNIT request");
  }

  sc->sc_current_status = 0;
  cfumass_transfer_start(sc, CFUMASS_T_STATUS);

  return (1);
 default:
  break;
 }

 return (0);
}
