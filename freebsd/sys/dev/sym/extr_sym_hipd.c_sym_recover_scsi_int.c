
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u_char ;
typedef scalar_t__ u32 ;
typedef TYPE_1__* hcb_p ;
typedef TYPE_2__* ccb_p ;
struct TYPE_10__ {int host_status; } ;
struct TYPE_9__ {int rv_ctest3; } ;


 int CLF ;
 int CSF ;
 scalar_t__ INL (int ) ;
 int OUTB (int ,int) ;
 int OUTL (int ,int) ;
 int OUTL_DSP (scalar_t__) ;
 scalar_t__ SCRIPTA_BA (TYPE_1__*,int ) ;
 scalar_t__ SCRIPTB_BA (TYPE_1__*,int ) ;
 int TE ;
 int complete_error ;
 int done ;
 int done_end ;
 int getjob_begin ;
 int getjob_end ;
 int nc_ctest3 ;
 int nc_dsa ;
 int nc_dsp ;
 int nc_stest3 ;
 int reselect ;
 int sel_for_abort ;
 int sel_for_abort_1 ;
 int start ;
 TYPE_2__* sym_ccb_from_dsa (TYPE_1__*,scalar_t__) ;
 int sym_start_reset (TYPE_1__*) ;
 int ungetjob ;

__attribute__((used)) static void sym_recover_scsi_int (hcb_p np, u_char hsts)
{
 u32 dsp = INL (nc_dsp);
 u32 dsa = INL (nc_dsa);
 ccb_p cp = sym_ccb_from_dsa(np, dsa);






 if ((!(dsp > SCRIPTA_BA (np, getjob_begin) &&
        dsp < SCRIPTA_BA (np, getjob_end) + 1)) &&
     (!(dsp > SCRIPTA_BA (np, ungetjob) &&
        dsp < SCRIPTA_BA (np, reselect) + 1)) &&
     (!(dsp > SCRIPTB_BA (np, sel_for_abort) &&
        dsp < SCRIPTB_BA (np, sel_for_abort_1) + 1)) &&
     (!(dsp > SCRIPTA_BA (np, done) &&
        dsp < SCRIPTA_BA (np, done_end) + 1))) {
  OUTB (nc_ctest3, np->rv_ctest3 | CLF);
  OUTB (nc_stest3, TE|CSF);






  if (cp) {
   cp->host_status = hsts;
   OUTL_DSP (SCRIPTA_BA (np, complete_error));
  }



  else {
   OUTL (nc_dsa, 0xffffff);
   OUTL_DSP (SCRIPTA_BA (np, start));
  }
 }
 else
  goto reset_all;

 return;

reset_all:
 sym_start_reset(np);
}
