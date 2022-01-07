
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int u_short ;
typedef int u_char ;
typedef int u32 ;
typedef TYPE_1__* hcb_p ;
typedef TYPE_2__* ccb_p ;
struct TYPE_13__ {int xerr_status; } ;
struct TYPE_12__ {int * msgout; } ;


 int HF_EXT_ERR ;
 int HF_PRT ;
 int HS_PRT ;
 int HS_UNEXPECTED ;
 int INB (int ) ;
 int INL (int ) ;
 int ISCON ;
 int MA ;
 int M_ID_ERROR ;
 int M_PARITY ;
 int OUTL (int ,int) ;
 int OUTL_DSP (int) ;
 int OUTONB (int ,int ) ;
 int SCRIPTA_BA (TYPE_1__*,int ) ;
 int SCRIPTB_BA (TYPE_1__*,int ) ;
 int XE_PARITY_ERR ;
 int clrack ;
 int dispatch ;
 int nc_dbc ;
 int nc_dsa ;
 int nc_dsp ;
 int nc_sbcl ;
 int nc_scntl1 ;
 int nc_temp ;
 int pm_handle ;
 int printf (char*,char*,int,int,int) ;
 TYPE_2__* sym_ccb_from_dsa (TYPE_1__*,int) ;
 int sym_int_ma (TYPE_1__*) ;
 char* sym_name (TYPE_1__*) ;
 int sym_recover_scsi_int (TYPE_1__*,int ) ;
 int sym_start_reset (TYPE_1__*) ;

__attribute__((used)) static void sym_int_par (hcb_p np, u_short sist)
{
 u_char hsts = INB (HS_PRT);
 u32 dsp = INL (nc_dsp);
 u32 dbc = INL (nc_dbc);
 u32 dsa = INL (nc_dsa);
 u_char sbcl = INB (nc_sbcl);
 u_char cmd = dbc >> 24;
 int phase = cmd & 7;
 ccb_p cp = sym_ccb_from_dsa(np, dsa);

 printf("%s: SCSI parity error detected: SCR1=%d DBC=%x SBCL=%x\n",
  sym_name(np), hsts, dbc, sbcl);




 if (!(INB (nc_scntl1) & ISCON)) {
  sym_recover_scsi_int(np, HS_UNEXPECTED);
  return;
 }





 if (!cp)
  goto reset_all;





 if ((cmd & 0xc0) || !(phase & 1) || !(sbcl & 0x8))
  goto reset_all;




 OUTONB (HF_PRT, HF_EXT_ERR);
 cp->xerr_status |= XE_PARITY_ERR;




 np->msgout[0] = (phase == 7) ? M_PARITY : M_ID_ERROR;
 if (phase == 1 || phase == 5) {

  if (dsp == SCRIPTB_BA (np, pm_handle))
   OUTL_DSP (dsp);

  else if (sist & MA)
   sym_int_ma (np);

  else {
   OUTL (nc_temp, dsp);
   OUTL_DSP (SCRIPTA_BA (np, dispatch));
  }
 }
 else
  OUTL_DSP (SCRIPTA_BA (np, clrack));
 return;

reset_all:
 sym_start_reset(np);
}
