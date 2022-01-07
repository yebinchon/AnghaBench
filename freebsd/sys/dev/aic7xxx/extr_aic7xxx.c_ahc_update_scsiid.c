
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ahc_softc {int features; int our_id; } ;


 int AHC_MULTI_TID ;
 int AHC_ULTRA2 ;
 int OID ;
 int SCSIID ;
 int SCSIID_ULTRA2 ;
 int TID ;
 int ahc_inb (struct ahc_softc*,int ) ;
 int ahc_outb (struct ahc_softc*,int ,int) ;
 int ffs (int) ;
 int panic (char*) ;

__attribute__((used)) static void
ahc_update_scsiid(struct ahc_softc *ahc, u_int targid_mask)
{
 u_int scsiid_mask;
 u_int scsiid;

 if ((ahc->features & AHC_MULTI_TID) == 0)
  panic("ahc_update_scsiid called on non-multitid unit\n");







 if ((ahc->features & AHC_ULTRA2) != 0)
  scsiid = ahc_inb(ahc, SCSIID_ULTRA2);
 else
  scsiid = ahc_inb(ahc, SCSIID);
 scsiid_mask = 0x1 << (scsiid & OID);
 if ((targid_mask & scsiid_mask) == 0) {
  u_int our_id;


  our_id = ffs(targid_mask);
  if (our_id == 0)
   our_id = ahc->our_id;
  else
   our_id--;
  scsiid &= TID;
  scsiid |= our_id;
 }
 if ((ahc->features & AHC_ULTRA2) != 0)
  ahc_outb(ahc, SCSIID_ULTRA2, scsiid);
 else
  ahc_outb(ahc, SCSIID, scsiid);
}
