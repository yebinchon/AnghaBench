
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef TYPE_4__* tcb_p ;
typedef TYPE_5__* hcb_p ;
struct TYPE_18__ {int rv_scntl0; int myaddr; int rv_dmode; int rv_ctest5; int rv_dcntl; int rv_ctest3; int rv_ctest4; int features; int rv_stest2; scalar_t__ device_id; int rv_ccntl0; int rv_ccntl1; int scsi_mode; int ram_ws; int path; scalar_t__ hcb_ba; scalar_t__ istat_sem; int scripta_sz; int scripta0; scalar_t__ scr_ram_seg; int scriptb_sz; int scriptb0; scalar_t__ ram_ba; int rv_scntl3; TYPE_4__* target; int (* fw_patch ) (TYPE_5__*) ;scalar_t__ dqueueget; void** dqueue; scalar_t__ dqueue_ba; scalar_t__ squeueput; void** squeue; scalar_t__ idletask_ba; scalar_t__ squeue_ba; } ;
struct TYPE_15__ {scalar_t__ options; int width; scalar_t__ offset; scalar_t__ period; } ;
struct TYPE_16__ {TYPE_2__ current; } ;
struct TYPE_14__ {scalar_t__ uval; int wval; scalar_t__ sval; } ;
struct TYPE_17__ {TYPE_3__ tinfo; TYPE_1__ head; scalar_t__ to_reset; } ;


 int AC_BUS_RESET ;
 int BF ;
 int BUS_8_BIT ;
 int CAM_SCSI_BUS_RESET ;
 int CLF ;
 int CSF ;
 int DISAIP ;
 int DPR ;
 int EXT ;
 int FE_C10 ;
 int FE_DAC ;
 int FE_LED0 ;
 int FE_LEDC ;
 int FE_NOPM ;
 int FE_ULTRA2 ;
 int FE_ULTRA3 ;
 unsigned long HTH ;
 int IID ;
 int INB (int ) ;
 int INW (int ) ;
 unsigned long MA ;
 int MAX_QUEUE ;
 int MA_OWNED ;
 int MDELAY (int) ;
 int MDPE ;
 int NOCOM ;
 int OUTB (int ,int) ;
 int OUTL (int ,scalar_t__) ;
 int OUTL_DSP (scalar_t__) ;
 int OUTONB (int ,int ) ;
 int OUTONW (int ,int ) ;
 int OUTRAM_OFF (int,int ,int ) ;
 int OUTW (int ,unsigned long) ;
 unsigned long PAR ;
 scalar_t__ PCI_ID_LSI53C1010 ;
 scalar_t__ PCI_ID_LSI53C1010_2 ;
 scalar_t__ PCI_ID_SYM53C875 ;
 scalar_t__ PCI_ID_SYM53C896 ;
 int RRE ;
 unsigned long RST ;
 int SBMC ;
 scalar_t__ SCRIPTA_BA (TYPE_5__*,int ) ;
 scalar_t__ SCRIPTB_BA (TYPE_5__*,int ) ;
 unsigned long SGE ;
 int SIGP ;
 int SIR ;
 int SMODE ;
 int SSI ;
 unsigned long STO ;
 int SYM_CONF_MAX_TARGET ;
 int SYM_LOCK_ASSERT (int ) ;
 int TE ;
 unsigned long UDC ;
 int UDELAY (int) ;
 void* cpu_to_scr (scalar_t__) ;
 int init ;
 int nc_aipcntl1 ;
 int nc_ccntl0 ;
 int nc_ccntl1 ;
 int nc_ctest0 ;
 int nc_ctest3 ;
 int nc_ctest4 ;
 int nc_ctest5 ;
 int nc_dcntl ;
 int nc_dien ;
 int nc_dmode ;
 int nc_dsa ;
 int nc_gpcntl ;
 int nc_istat ;
 int nc_mmrs ;
 int nc_mmws ;
 int nc_pmjad1 ;
 int nc_pmjad2 ;
 int nc_respid ;
 int nc_scid ;
 int nc_scntl0 ;
 int nc_scntl1 ;
 int nc_sfs ;
 int nc_sien ;
 int nc_sist ;
 int nc_stest1 ;
 int nc_stest2 ;
 int nc_stest3 ;
 int nc_stest4 ;
 int nc_stime0 ;
 int pm_handle ;
 int printf (char*,char*) ;
 int start64 ;
 int stub1 (TYPE_5__*) ;
 int sym_flush_busy_queue (TYPE_5__*,int ) ;
 char* sym_name (TYPE_5__*) ;
 int sym_selectclock (TYPE_5__*,int ) ;
 int sym_soft_reset (TYPE_5__*) ;
 int sym_verbose ;
 int xpt_async (int ,int ,int *) ;

__attribute__((used)) static void sym_init (hcb_p np, int reason)
{
  int i;
 u32 phys;

 SYM_LOCK_ASSERT(MA_OWNED);




 if (reason == 1)
  sym_soft_reset(np);
 else {
  OUTB (nc_stest3, TE|CSF);
  OUTONB (nc_ctest3, CLF);
 }




 phys = np->squeue_ba;
 for (i = 0; i < MAX_QUEUE*2; i += 2) {
  np->squeue[i] = cpu_to_scr(np->idletask_ba);
  np->squeue[i+1] = cpu_to_scr(phys + (i+2)*4);
 }
 np->squeue[MAX_QUEUE*2-1] = cpu_to_scr(phys);




 np->squeueput = 0;




 phys = np->dqueue_ba;
 for (i = 0; i < MAX_QUEUE*2; i += 2) {
  np->dqueue[i] = 0;
  np->dqueue[i+1] = cpu_to_scr(phys + (i+2)*4);
 }
 np->dqueue[MAX_QUEUE*2-1] = cpu_to_scr(phys);




 np->dqueueget = 0;






 np->fw_patch(np);




 sym_flush_busy_queue(np, CAM_SCSI_BUS_RESET);




 OUTB (nc_istat, 0x00 );
 UDELAY (2000);

 OUTB (nc_scntl0, np->rv_scntl0 | 0xc0);

 OUTB (nc_scntl1, 0x00);

 sym_selectclock(np, np->rv_scntl3);

 OUTB (nc_scid , RRE|np->myaddr);
 OUTW (nc_respid, 1ul<<np->myaddr);
 OUTB (nc_istat , SIGP );
 OUTB (nc_dmode , np->rv_dmode);
 OUTB (nc_ctest5, np->rv_ctest5);

 OUTB (nc_dcntl , NOCOM|np->rv_dcntl);
 OUTB (nc_ctest3, np->rv_ctest3);
 OUTB (nc_ctest4, np->rv_ctest4);


 if (np->features & FE_C10)
  OUTB (nc_stest2, np->rv_stest2);
 else
  OUTB (nc_stest2, EXT|np->rv_stest2);

 OUTB (nc_stest3, TE);
 OUTB (nc_stime0, 0x0c);




 if (np->device_id == PCI_ID_LSI53C1010_2)
  OUTB (nc_aipcntl1, DISAIP);
 if (np->device_id == PCI_ID_LSI53C1010 &&
                                  1)
  OUTB (nc_stest1, INB(nc_stest1) | 0x30);






 if (np->device_id == PCI_ID_SYM53C875)
  OUTB (nc_ctest0, (1<<5));
 else if (np->device_id == PCI_ID_SYM53C896)
  np->rv_ccntl0 |= DPR;






 if (np->features & (FE_DAC|FE_NOPM)) {
  OUTB (nc_ccntl0, np->rv_ccntl0);
  OUTB (nc_ccntl1, np->rv_ccntl1);
 }





 if (np->features & FE_NOPM) {
  OUTL (nc_pmjad1, SCRIPTB_BA (np, pm_handle));
  OUTL (nc_pmjad2, SCRIPTB_BA (np, pm_handle));
 }





 if (np->features & FE_LED0)
  OUTB(nc_gpcntl, INB(nc_gpcntl) & ~0x01);
 else if (np->features & FE_LEDC)
  OUTB(nc_gpcntl, (INB(nc_gpcntl) & ~0x41) | 0x20);




 OUTW (nc_sien , STO|HTH|MA|SGE|UDC|RST|PAR);
 OUTB (nc_dien , MDPE|BF|SSI|SIR|IID);






 if (np->features & (FE_ULTRA2|FE_ULTRA3)) {
  OUTONW (nc_sien, SBMC);
  if (reason == 0) {
   MDELAY(100);
   INW (nc_sist);
  }
  np->scsi_mode = INB (nc_stest4) & SMODE;
 }







 for (i=0;i<SYM_CONF_MAX_TARGET;i++) {
  tcb_p tp = &np->target[i];

  tp->to_reset = 0;
  tp->head.sval = 0;
  tp->head.wval = np->rv_scntl3;
  tp->head.uval = 0;

  tp->tinfo.current.period = 0;
  tp->tinfo.current.offset = 0;
  tp->tinfo.current.width = BUS_8_BIT;
  tp->tinfo.current.options = 0;
 }





 if (np->ram_ba) {
  if (sym_verbose > 1)
   printf ("%s: Downloading SCSI SCRIPTS.\n",
    sym_name(np));
  if (np->ram_ws == 8192) {
   OUTRAM_OFF(4096, np->scriptb0, np->scriptb_sz);
   OUTL (nc_mmws, np->scr_ram_seg);
   OUTL (nc_mmrs, np->scr_ram_seg);
   OUTL (nc_sfs, np->scr_ram_seg);
   phys = SCRIPTB_BA (np, start64);
  }
  else
   phys = SCRIPTA_BA (np, init);
  OUTRAM_OFF(0, np->scripta0, np->scripta_sz);
 }
 else
  phys = SCRIPTA_BA (np, init);

 np->istat_sem = 0;

 OUTL (nc_dsa, np->hcb_ba);
 OUTL_DSP (phys);




 if (reason != 0)
  xpt_async(AC_BUS_RESET, np->path, ((void*)0));
}
