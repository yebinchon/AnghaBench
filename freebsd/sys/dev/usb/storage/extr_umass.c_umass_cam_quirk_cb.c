
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ccb {int dummy; } ccb ;
typedef int uint8_t ;
typedef int uint32_t ;
struct umass_softc {int dummy; } ;


 int DPRINTF (struct umass_softc*,int ,char*,int ) ;
 int UDMASS_SCSI ;
 int xpt_done (union ccb*) ;

__attribute__((used)) static void
umass_cam_quirk_cb(struct umass_softc *sc, union ccb *ccb, uint32_t residue,
    uint8_t status)
{
 DPRINTF(sc, UDMASS_SCSI, "Test unit ready "
     "returned status %d\n", status);

 xpt_done(ccb);
}
