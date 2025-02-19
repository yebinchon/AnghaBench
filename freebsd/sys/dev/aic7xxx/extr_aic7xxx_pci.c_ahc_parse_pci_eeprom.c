
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
typedef int u_int ;
struct seeprom_config {int max_targets; int adapter_control; int* device_flags; int brtime_id; int bios_control; scalar_t__ signature; } ;
struct ahc_softc {int flags; int features; int our_id; int dev_softc; } ;


 int AHC_BIOS_ENABLED ;
 int AHC_EXTENDED_TRANS_A ;
 int AHC_NEWEEPROM_FMT ;
 int AHC_ULTRA ;
 int AHC_ULTRA2 ;
 int CFBIOSEN ;
 int CFBOOTCHAN ;
 int CFBOOTCHANSHIFT ;
 int CFDISC ;
 int CFEXTEND ;
 int CFMAXTARG ;
 int CFRESETB ;
 int CFSCSIID ;
 scalar_t__ CFSIGNATURE ;
 scalar_t__ CFSIGNATURE2 ;
 int CFSPARITY ;
 int CFSTPWLEVEL ;
 int CFSYNCH ;
 int CFSYNCHISULTRA ;
 int CFULTRAEN ;
 int CFWIDEB ;
 int CFXFER ;
 int DEVCONFIG ;
 scalar_t__ DISC_DSB ;
 int ENSPCHK ;
 int MAX_OFFSET_ULTRA2 ;
 int RESET_SCSI ;
 scalar_t__ SCSICONF ;
 int SOFS ;
 int STPWLEVEL ;
 scalar_t__ TARG_OFFSET ;
 scalar_t__ TARG_SCSIRATE ;
 scalar_t__ ULTRA_ENB ;
 int WIDEXFER ;
 int ahc_outb (struct ahc_softc*,scalar_t__,int) ;
 int aic_pci_read_config (int ,int ,int) ;
 int aic_pci_write_config (int ,int ,int ,int) ;

__attribute__((used)) static void
ahc_parse_pci_eeprom(struct ahc_softc *ahc, struct seeprom_config *sc)
{




 int i;
 int max_targ = sc->max_targets & CFMAXTARG;
 u_int scsi_conf;
 uint16_t discenable;
 uint16_t ultraenb;

 discenable = 0;
 ultraenb = 0;
 if ((sc->adapter_control & CFULTRAEN) != 0) {




  for (i = 0; i < max_targ; i++) {
   if ((sc->device_flags[i] & CFSYNCHISULTRA) != 0) {
    ahc->flags |= AHC_NEWEEPROM_FMT;
    break;
   }
  }
 }

 for (i = 0; i < max_targ; i++) {
  u_int scsirate;
  uint16_t target_mask;

  target_mask = 0x01 << i;
  if (sc->device_flags[i] & CFDISC)
   discenable |= target_mask;
  if ((ahc->flags & AHC_NEWEEPROM_FMT) != 0) {
   if ((sc->device_flags[i] & CFSYNCHISULTRA) != 0)
    ultraenb |= target_mask;
  } else if ((sc->adapter_control & CFULTRAEN) != 0) {
   ultraenb |= target_mask;
  }
  if ((sc->device_flags[i] & CFXFER) == 0x04
   && (ultraenb & target_mask) != 0) {

   sc->device_flags[i] &= ~CFXFER;
    ultraenb &= ~target_mask;
  }
  if ((ahc->features & AHC_ULTRA2) != 0) {
   u_int offset;

   if (sc->device_flags[i] & CFSYNCH)
    offset = MAX_OFFSET_ULTRA2;
   else
    offset = 0;
   ahc_outb(ahc, TARG_OFFSET + i, offset);






   scsirate = (sc->device_flags[i] & CFXFER)
     | ((ultraenb & target_mask) ? 0x8 : 0x0);
   if (sc->device_flags[i] & CFWIDEB)
    scsirate |= WIDEXFER;
  } else {
   scsirate = (sc->device_flags[i] & CFXFER) << 4;
   if (sc->device_flags[i] & CFSYNCH)
    scsirate |= SOFS;
   if (sc->device_flags[i] & CFWIDEB)
    scsirate |= WIDEXFER;
  }
  ahc_outb(ahc, TARG_SCSIRATE + i, scsirate);
 }
 ahc->our_id = sc->brtime_id & CFSCSIID;

 scsi_conf = (ahc->our_id & 0x7);
 if (sc->adapter_control & CFSPARITY)
  scsi_conf |= ENSPCHK;
 if (sc->adapter_control & CFRESETB)
  scsi_conf |= RESET_SCSI;

 ahc->flags |= (sc->adapter_control & CFBOOTCHAN) >> CFBOOTCHANSHIFT;

 if (sc->bios_control & CFEXTEND)
  ahc->flags |= AHC_EXTENDED_TRANS_A;

 if (sc->bios_control & CFBIOSEN)
  ahc->flags |= AHC_BIOS_ENABLED;
 if (ahc->features & AHC_ULTRA
  && (ahc->flags & AHC_NEWEEPROM_FMT) == 0) {

  if (!(sc->adapter_control & CFULTRAEN))

   ultraenb = 0;
 }

 if (sc->signature == CFSIGNATURE
  || sc->signature == CFSIGNATURE2) {
  uint32_t devconfig;


  devconfig = aic_pci_read_config(ahc->dev_softc,
      DEVCONFIG, 4);
  devconfig &= ~STPWLEVEL;
  if ((sc->bios_control & CFSTPWLEVEL) != 0)
   devconfig |= STPWLEVEL;
  aic_pci_write_config(ahc->dev_softc, DEVCONFIG,
         devconfig, 4);
 }

 ahc_outb(ahc, SCSICONF, scsi_conf);
 ahc_outb(ahc, DISC_DSB, ~(discenable & 0xff));
 ahc_outb(ahc, DISC_DSB + 1, ~((discenable >> 8) & 0xff));
 ahc_outb(ahc, ULTRA_ENB, ultraenb & 0xff);
 ahc_outb(ahc, ULTRA_ENB + 1, (ultraenb >> 8) & 0xff);
}
