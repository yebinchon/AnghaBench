
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
typedef int u32 ;
struct TYPE_16__ {int addr; int size; } ;
struct sym_pmc {int ret; TYPE_2__ sg; } ;
typedef TYPE_5__* hcb_p ;
typedef TYPE_6__* ccb_p ;
struct TYPE_15__ {void* size; void* addr; } ;
struct TYPE_17__ {int sel_scntl3; } ;
struct TYPE_18__ {TYPE_1__ wresid; TYPE_3__ select; struct sym_pmc pm1; struct sym_pmc pm0; } ;
struct TYPE_20__ {int lun; int host_status; int tag; TYPE_4__ phys; } ;
struct TYPE_19__ {int features; int rv_ctest3; int scripta_ba; int scripta_sz; int scriptb_ba; int scriptb_sz; int* msgout; scalar_t__ scriptb0; scalar_t__ scripta0; } ;


 int CLF ;
 int CSF ;
 int DEBUG_FLAGS ;
 int DEBUG_PHASE ;
 int DEBUG_TINY ;
 int DFS ;
 int EWS ;
 int FE_C10 ;
 int FE_DFBC ;
 int HF_ACT_PM ;
 int HF_DP_SAVED ;
 int HF_IN_PM0 ;
 int HF_IN_PM1 ;
 int HF_PRT ;
 int HS_BUSY ;
 int INB (int ) ;
 int INL (int ) ;
 int INW (int ) ;
 int M_IDENTIFY ;
 int NO_TAG ;
 int OLF ;
 int OLF1 ;
 int ORF ;
 int ORF1 ;
 int OUTB (int ,int) ;
 int OUTL (int ,int) ;
 int OUTL_DSP (int) ;
 int PRINT_ADDR (TYPE_6__*) ;
 int SCRIPTA_BA (TYPE_5__*,int ) ;
 int SCRIPTB_BA (TYPE_5__*,int ) ;
 int TE ;
 int WSR ;
 int clrack ;
 void* cpu_to_scr (int) ;
 int dispatch ;
 int ident_break ;
 int ident_break_atn ;
 int nc_ctest3 ;
 int nc_dbc ;
 int nc_dfbc ;
 int nc_dfifo ;
 int nc_dsa ;
 int nc_dsp ;
 int nc_sbcl ;
 int nc_scntl2 ;
 int nc_sstat0 ;
 int nc_sstat2 ;
 int nc_stest3 ;
 int nc_temp ;
 int nego_bad_phase ;
 int pm0_data ;
 int pm1_data ;
 int printf (char*,...) ;
 int scr_to_cpu (int) ;
 int send_ident ;
 int send_ppr ;
 int send_sdtr ;
 int send_wdtr ;
 TYPE_6__* sym_ccb_from_dsa (TYPE_5__*,int) ;
 char* sym_name (TYPE_5__*) ;
 int sym_start_reset (TYPE_5__*) ;
 int wsr_ma_helper ;

__attribute__((used)) static void sym_int_ma (hcb_p np)
{
 u32 dbc;
 u32 rest;
 u32 dsp;
 u32 dsa;
 u32 nxtdsp;
 u32 *vdsp;
 u32 oadr, olen;
 u32 *tblp;
        u32 newcmd;
 u_int delta;
 u_char cmd;
 u_char hflags, hflags0;
 struct sym_pmc *pm;
 ccb_p cp;

 dsp = INL (nc_dsp);
 dbc = INL (nc_dbc);
 dsa = INL (nc_dsa);

 cmd = dbc >> 24;
 rest = dbc & 0xffffff;
 delta = 0;




 cp = sym_ccb_from_dsa(np, dsa);







 if ((cmd & 7) != 1 && (cmd & 7) != 5) {
  u_char ss0, ss2;

  if (np->features & FE_DFBC)
   delta = INW (nc_dfbc);
  else {
   u32 dfifo;




   dfifo = INL(nc_dfifo);





   if (dfifo & (DFS << 16))
    delta = ((((dfifo >> 8) & 0x300) |
              (dfifo & 0xff)) - rest) & 0x3ff;
   else
    delta = ((dfifo & 0xff) - rest) & 0x7f;
  }







  rest += delta;
  ss0 = INB (nc_sstat0);
  if (ss0 & OLF) rest++;
  if (!(np->features & FE_C10))
   if (ss0 & ORF) rest++;
  if (cp && (cp->phys.select.sel_scntl3 & EWS)) {
   ss2 = INB (nc_sstat2);
   if (ss2 & OLF1) rest++;
   if (!(np->features & FE_C10))
    if (ss2 & ORF1) rest++;
  }




  OUTB (nc_ctest3, np->rv_ctest3 | CLF);
  OUTB (nc_stest3, TE|CSF);
 }




 if (DEBUG_FLAGS & (DEBUG_TINY|DEBUG_PHASE))
  printf ("P%x%x RL=%d D=%d ", cmd&7, INB(nc_sbcl)&7,
   (unsigned) rest, (unsigned) delta);





 vdsp = ((void*)0);
 nxtdsp = 0;
 if (dsp > np->scripta_ba &&
   dsp <= np->scripta_ba + np->scripta_sz) {
  vdsp = (u32 *)((char*)np->scripta0 + (dsp-np->scripta_ba-8));
  nxtdsp = dsp;
 }
 else if (dsp > np->scriptb_ba &&
   dsp <= np->scriptb_ba + np->scriptb_sz) {
  vdsp = (u32 *)((char*)np->scriptb0 + (dsp-np->scriptb_ba-8));
  nxtdsp = dsp;
 }




 if (DEBUG_FLAGS & DEBUG_PHASE) {
  printf ("\nCP=%p DSP=%x NXT=%x VDSP=%p CMD=%x ",
   cp, (unsigned)dsp, (unsigned)nxtdsp, vdsp, cmd);
 }

 if (!vdsp) {
  printf ("%s: interrupted SCRIPT address not found.\n",
   sym_name (np));
  goto reset_all;
 }

 if (!cp) {
  printf ("%s: SCSI phase error fixup: CCB already dequeued.\n",
   sym_name (np));
  goto reset_all;
 }




 oadr = scr_to_cpu(vdsp[1]);

 if (cmd & 0x10) {
  tblp = (u32 *) ((char*) &cp->phys + oadr);
  olen = scr_to_cpu(tblp[0]);
  oadr = scr_to_cpu(tblp[1]);
 } else {
  tblp = (u32 *) 0;
  olen = scr_to_cpu(vdsp[0]) & 0xffffff;
 }

 if (DEBUG_FLAGS & DEBUG_PHASE) {
  printf ("OCMD=%x\nTBLP=%p OLEN=%x OADR=%x\n",
   (unsigned) (scr_to_cpu(vdsp[0]) >> 24),
   tblp,
   (unsigned) olen,
   (unsigned) oadr);
 }






 if (((cmd & 2) ? cmd : (cmd & ~4)) != (scr_to_cpu(vdsp[0]) >> 24)) {
  PRINT_ADDR(cp);
  printf ("internal error: cmd=%02x != %02x=(vdsp[0] >> 24)\n",
   (unsigned)cmd, (unsigned)scr_to_cpu(vdsp[0]) >> 24);

  goto reset_all;
 }




 if (cmd & 2) {
  PRINT_ADDR(cp);
  printf ("phase change %x-%x %d@%08x resid=%d.\n",
   cmd&7, INB(nc_sbcl)&7, (unsigned)olen,
   (unsigned)oadr, (unsigned)rest);
  goto unexpected_phase;
 }
 hflags0 = INB (HF_PRT);
 hflags = hflags0;

 if (hflags & (HF_IN_PM0 | HF_IN_PM1 | HF_DP_SAVED)) {
  if (hflags & HF_IN_PM0)
   nxtdsp = scr_to_cpu(cp->phys.pm0.ret);
  else if (hflags & HF_IN_PM1)
   nxtdsp = scr_to_cpu(cp->phys.pm1.ret);

  if (hflags & HF_DP_SAVED)
   hflags ^= HF_ACT_PM;
 }

 if (!(hflags & HF_ACT_PM)) {
  pm = &cp->phys.pm0;
  newcmd = SCRIPTA_BA (np, pm0_data);
 }
 else {
  pm = &cp->phys.pm1;
  newcmd = SCRIPTA_BA (np, pm1_data);
 }

 hflags &= ~(HF_IN_PM0 | HF_IN_PM1 | HF_DP_SAVED);
 if (hflags != hflags0)
  OUTB (HF_PRT, hflags);




 pm->sg.addr = cpu_to_scr(oadr + olen - rest);
 pm->sg.size = cpu_to_scr(rest);
 pm->ret = cpu_to_scr(nxtdsp);







 nxtdsp = SCRIPTA_BA (np, dispatch);
 if ((cmd & 7) == 1 && cp && (cp->phys.select.sel_scntl3 & EWS) &&
     (INB (nc_scntl2) & WSR)) {
  u32 tmp;






  tmp = scr_to_cpu(pm->sg.addr);
  cp->phys.wresid.addr = cpu_to_scr(tmp);
  pm->sg.addr = cpu_to_scr(tmp + 1);
  tmp = scr_to_cpu(pm->sg.size);
  cp->phys.wresid.size = cpu_to_scr((tmp&0xff000000) | 1);
  pm->sg.size = cpu_to_scr(tmp - 1);





  if ((tmp&0xffffff) == 1)
   newcmd = pm->ret;





  nxtdsp = SCRIPTB_BA (np, wsr_ma_helper);
 }

 if (DEBUG_FLAGS & DEBUG_PHASE) {
  PRINT_ADDR(cp);
  printf ("PM %x %x %x / %x %x %x.\n",
   hflags0, hflags, newcmd,
   (unsigned)scr_to_cpu(pm->sg.addr),
   (unsigned)scr_to_cpu(pm->sg.size),
   (unsigned)scr_to_cpu(pm->ret));
 }




 OUTL (nc_temp, newcmd);
 OUTL_DSP (nxtdsp);
 return;
unexpected_phase:
 dsp -= 8;
 nxtdsp = 0;

 switch (cmd & 7) {
 case 2:
  nxtdsp = SCRIPTA_BA (np, dispatch);
  break;





 case 6:






  if (dsp == SCRIPTA_BA (np, send_ident)) {
   if (cp->tag != NO_TAG && olen - rest <= 3) {
    cp->host_status = HS_BUSY;
    np->msgout[0] = M_IDENTIFY | cp->lun;
    nxtdsp = SCRIPTB_BA (np, ident_break_atn);
   }
   else
    nxtdsp = SCRIPTB_BA (np, ident_break);
  }
  else if (dsp == SCRIPTB_BA (np, send_wdtr) ||
    dsp == SCRIPTB_BA (np, send_sdtr) ||
    dsp == SCRIPTB_BA (np, send_ppr)) {
   nxtdsp = SCRIPTB_BA (np, nego_bad_phase);
  }
  break;





 }

 if (nxtdsp) {
  OUTL_DSP (nxtdsp);
  return;
 }

reset_all:
 sym_start_reset(np);
}
