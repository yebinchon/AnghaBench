
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int u_char ;
typedef int u32 ;
typedef TYPE_4__* tcb_p ;
struct sym_nvram {int type; } ;
typedef TYPE_5__* hcb_p ;
struct TYPE_17__ {int maxwide; int features; int multiplier; int clock_khz; int clock_divn; int rv_scntl3; int minsync; int maxsync; int minsync_dt; int maxsync_dt; int maxoffs_dt; int rv_ccntl1; scalar_t__ device_id; int revision_id; int sv_dmode; int sv_ctest4; int sv_ctest5; int maxburst; int rv_dmode; int rv_dcntl; int rv_ctest3; int rv_ctest5; int rv_ctest4; int rv_scntl0; int myaddr; int scsi_mode; int sv_stest4; int sv_scntl3; int sv_stest2; int rv_stest2; int sv_gpcntl; int sv_dcntl; int maxoffs; char* fw_name; int sv_ctest3; scalar_t__ ram_ba; TYPE_4__* target; int device; int rv_ccntl0; } ;
struct TYPE_14__ {int scsi_version; int spi_version; int period; int offset; scalar_t__ width; int options; } ;
struct TYPE_13__ {int scsi_version; int spi_version; } ;
struct TYPE_15__ {TYPE_2__ user; TYPE_1__ current; } ;
struct TYPE_16__ {int usrflags; int usrtags; TYPE_3__ tinfo; } ;


 int BOF ;
 scalar_t__ BUS_16_BIT ;
 scalar_t__ BUS_8_BIT ;
 int CLSE ;
 int DDAC ;
 int DFS ;
 int DILS ;
 int ENPMJ ;
 int ERL ;
 int ERMP ;
 int EXTIBMV ;
 int FE_BOF ;
 int FE_C10 ;
 int FE_CLK80 ;
 int FE_CLSE ;
 int FE_DAC ;
 int FE_DBLR ;
 int FE_DFS ;
 int FE_DIFF ;
 int FE_ERL ;
 int FE_ERMP ;
 int FE_LED0 ;
 int FE_LEDC ;
 int FE_NOPM ;
 int FE_PFEN ;
 int FE_QUAD ;
 int FE_ULTRA ;
 int FE_ULTRA2 ;
 int FE_ULTRA3 ;
 int FE_WIDE ;
 int FE_WRIE ;
 int INB (int ) ;
 int IRQM ;
 int MPEE ;
 int OF_getscsinitid (int ) ;
 scalar_t__ PCI_ID_LSI53C1010 ;
 scalar_t__ PCI_ID_SYM53C810 ;
 scalar_t__ PCI_ID_SYM53C860 ;
 scalar_t__ PCI_ID_SYM53C895 ;
 int PFEN ;
 int PPR_OPT_DT ;
 int SMODE ;
 void* SMODE_HVD ;
 int SMODE_SE ;
 int SYM_CONF_MAX_TARGET ;
 unsigned long SYM_CONF_MIN_ASYNC ;
 int SYM_DISC_ENABLED ;
 int SYM_SCAN_BOOT_DISABLED ;
 int SYM_SCAN_LUNS_DISABLED ;
 int SYM_SETUP_BURST_ORDER ;
 int SYM_SETUP_HOST_ID ;
 int SYM_SETUP_IRQ_MODE ;
 int SYM_SETUP_MAX_TAG ;
 scalar_t__ SYM_SETUP_PCI_PARITY ;
 int SYM_SETUP_SCSI_DIFF ;
 scalar_t__ SYM_SETUP_SCSI_LED ;
 scalar_t__ SYM_SETUP_SCSI_PARITY ;
 int SYM_SYMBIOS_NVRAM ;
 int SYM_TAGS_ENABLED ;
 int SYM_TEKRAM_NVRAM ;
 int WRIE ;
 int XTIMOD ;
 int burst_code (int,int,int) ;
 unsigned long* div_10M ;
 void* howmany (int,int) ;
 int nc_gpreg ;
 int nc_scid ;
 int printf (char*,char*,...) ;
 int sym_getclock (TYPE_5__*,int) ;
 int sym_init_burst (TYPE_5__*,int) ;
 char* sym_name (TYPE_5__*) ;
 int sym_nvram_setup_host (TYPE_5__*,struct sym_nvram*) ;
 int sym_nvram_setup_target (TYPE_5__*,int,struct sym_nvram*) ;
 int sym_print_targets_flag (TYPE_5__*,int ,char*) ;
 char* sym_scsi_bus_mode (void*) ;
 int sym_verbose ;

__attribute__((used)) static int sym_prepare_setting(hcb_p np, struct sym_nvram *nvram)
{
 u_char burst_max;
 u32 period;
 int i;




 np->maxwide = (np->features & FE_WIDE)? 1 : 0;




 if (np->features & FE_QUAD)
  np->multiplier = 4;
 else if (np->features & FE_DBLR)
  np->multiplier = 2;
 else
  np->multiplier = 1;

 np->clock_khz = (np->features & FE_CLK80)? 80000 : 40000;
 np->clock_khz *= np->multiplier;

 if (np->clock_khz != 40000)
  sym_getclock(np, np->multiplier);




 i = np->clock_divn - 1;
 while (--i >= 0) {
  if (10ul * SYM_CONF_MIN_ASYNC * np->clock_khz > div_10M[i]) {
   ++i;
   break;
  }
 }
 np->rv_scntl3 = i+1;





 if (np->features & FE_C10)
  np->rv_scntl3 = 0;





 period = howmany(4 * div_10M[0], np->clock_khz);
 if (period <= 250) np->minsync = 10;
 else if (period <= 303) np->minsync = 11;
 else if (period <= 500) np->minsync = 12;
 else np->minsync = howmany(period, 40);




 if (np->minsync < 25 &&
   !(np->features & (FE_ULTRA|FE_ULTRA2|FE_ULTRA3)))
  np->minsync = 25;
 else if (np->minsync < 12 &&
   !(np->features & (FE_ULTRA2|FE_ULTRA3)))
  np->minsync = 12;




 period = (11 * div_10M[np->clock_divn - 1]) / (4 * np->clock_khz);
 np->maxsync = period > 2540 ? 254 : period / 10;




 if ((np->features & (FE_C10|FE_ULTRA3)) == (FE_C10|FE_ULTRA3)) {
  if (np->clock_khz == 160000) {
   np->minsync_dt = 9;
   np->maxsync_dt = 50;
   np->maxoffs_dt = 62;
  }
 }




 if (np->features & FE_DAC)

  np->rv_ccntl1 |= (XTIMOD | EXTIBMV);







 if (np->features & FE_NOPM)
  np->rv_ccntl0 |= (ENPMJ);






 if (np->device_id == PCI_ID_LSI53C1010 &&
     np->revision_id < 0x2)
  np->rv_ccntl0 |= DILS;




 burst_max = SYM_SETUP_BURST_ORDER;
 if (burst_max == 255)
  burst_max = burst_code(np->sv_dmode, np->sv_ctest4,
           np->sv_ctest5);
 if (burst_max > 7)
  burst_max = 7;
 if (burst_max > np->maxburst)
  burst_max = np->maxburst;
 if ((np->device_id == PCI_ID_SYM53C810 &&
      np->revision_id >= 0x10 && np->revision_id <= 0x11) ||
     (np->device_id == PCI_ID_SYM53C860 &&
      np->revision_id <= 0x1))
  np->features &= ~(FE_WRIE|FE_ERL|FE_ERMP);







 if (np->features & FE_ERL)
  np->rv_dmode |= ERL;
 if (np->features & FE_BOF)
  np->rv_dmode |= BOF;
 if (np->features & FE_ERMP)
  np->rv_dmode |= ERMP;

 if ((np->features & FE_PFEN) && !np->ram_ba)



  np->rv_dcntl |= PFEN;
 if (np->features & FE_CLSE)
  np->rv_dcntl |= CLSE;
 if (np->features & FE_WRIE)
  np->rv_ctest3 |= WRIE;
 if (np->features & FE_DFS)
  np->rv_ctest5 |= DFS;




 if (SYM_SETUP_PCI_PARITY)
  np->rv_ctest4 |= MPEE;
 if (SYM_SETUP_SCSI_PARITY)
  np->rv_scntl0 |= 0x0a;




 np->myaddr = 255;
 sym_nvram_setup_host (np, nvram);







 if (np->myaddr == 255) {
  np->myaddr = INB(nc_scid) & 0x07;
  if (!np->myaddr)
   np->myaddr = SYM_SETUP_HOST_ID;
 }




 sym_init_burst(np, burst_max);
 np->scsi_mode = SMODE_SE;
 if (np->features & (FE_ULTRA2|FE_ULTRA3))
  np->scsi_mode = (np->sv_stest4 & SMODE);
 else if (np->features & FE_DIFF) {
  if (SYM_SETUP_SCSI_DIFF == 1) {
   if (np->sv_scntl3) {
    if (np->sv_stest2 & 0x20)
     np->scsi_mode = SMODE_HVD;
   }
   else if (nvram->type == SYM_SYMBIOS_NVRAM) {
    if (!(INB(nc_gpreg) & 0x08))
     np->scsi_mode = SMODE_HVD;
   }
  }
  else if (SYM_SETUP_SCSI_DIFF == 2)
   np->scsi_mode = SMODE_HVD;
 }
 if (np->scsi_mode == SMODE_HVD)
  np->rv_stest2 |= 0x20;







 if ((SYM_SETUP_SCSI_LED ||
      (nvram->type == SYM_SYMBIOS_NVRAM ||
       (nvram->type == SYM_TEKRAM_NVRAM &&
        np->device_id == PCI_ID_SYM53C895))) &&
     !(np->features & FE_LEDC) && !(np->sv_gpcntl & 0x01))
  np->features |= FE_LED0;




 switch(SYM_SETUP_IRQ_MODE & 3) {
 case 2:
  np->rv_dcntl |= IRQM;
  break;
 case 1:
  np->rv_dcntl |= (np->sv_dcntl & IRQM);
  break;
 default:
  break;
 }





 for (i = 0 ; i < SYM_CONF_MAX_TARGET ; i++) {
  tcb_p tp = &np->target[i];

  tp->tinfo.user.scsi_version = tp->tinfo.current.scsi_version= 2;
  tp->tinfo.user.spi_version = tp->tinfo.current.spi_version = 2;
  tp->tinfo.user.period = np->minsync;
  if (np->features & FE_ULTRA3)
   tp->tinfo.user.period = np->minsync_dt;
  tp->tinfo.user.offset = np->maxoffs;
  tp->tinfo.user.width = np->maxwide ? BUS_16_BIT : BUS_8_BIT;
  tp->usrflags |= (SYM_DISC_ENABLED | SYM_TAGS_ENABLED);
  tp->usrtags = SYM_SETUP_MAX_TAG;

  sym_nvram_setup_target (np, i, nvram);





  if (np->features & FE_ULTRA3) {
   if (tp->tinfo.user.period <= 9 &&
       tp->tinfo.user.width == BUS_16_BIT) {
    tp->tinfo.user.options |= PPR_OPT_DT;
    tp->tinfo.user.offset = np->maxoffs_dt;
    tp->tinfo.user.spi_version = 3;
   }
  }

  if (!tp->usrtags)
   tp->usrflags &= ~SYM_TAGS_ENABLED;
 }




 i = nvram->type;
 printf("%s: %s NVRAM, ID %d, Fast-%d, %s, %s\n", sym_name(np),
  i == SYM_SYMBIOS_NVRAM ? "Symbios" :
  (i == SYM_TEKRAM_NVRAM ? "Tekram" : "No"),
  np->myaddr,
  (np->features & FE_ULTRA3) ? 80 :
  (np->features & FE_ULTRA2) ? 40 :
  (np->features & FE_ULTRA) ? 20 : 10,
  sym_scsi_bus_mode(np->scsi_mode),
  (np->rv_scntl0 & 0xa) ? "parity checking" : "NO parity");



 if (sym_verbose) {
  printf("%s: %s IRQ line driver%s\n",
   sym_name(np),
   np->rv_dcntl & IRQM ? "totem pole" : "open drain",
   np->ram_ba ? ", using on-chip SRAM" : "");
  printf("%s: using %s firmware.\n", sym_name(np), np->fw_name);
  if (np->features & FE_NOPM)
   printf("%s: handling phase mismatch from SCRIPTS.\n",
          sym_name(np));
 }



 if (sym_verbose > 1) {
  printf ("%s: initial SCNTL3/DMODE/DCNTL/CTEST3/4/5 = "
   "(hex) %02x/%02x/%02x/%02x/%02x/%02x\n",
   sym_name(np), np->sv_scntl3, np->sv_dmode, np->sv_dcntl,
   np->sv_ctest3, np->sv_ctest4, np->sv_ctest5);

  printf ("%s: final   SCNTL3/DMODE/DCNTL/CTEST3/4/5 = "
   "(hex) %02x/%02x/%02x/%02x/%02x/%02x\n",
   sym_name(np), np->rv_scntl3, np->rv_dmode, np->rv_dcntl,
   np->rv_ctest3, np->rv_ctest4, np->rv_ctest5);
 }



 sym_print_targets_flag(np, SYM_SCAN_BOOT_DISABLED, "SCAN AT BOOT");
 if (sym_verbose)
  sym_print_targets_flag(np, SYM_SCAN_LUNS_DISABLED,
           "SCAN FOR LUNS");

 return 0;
}
