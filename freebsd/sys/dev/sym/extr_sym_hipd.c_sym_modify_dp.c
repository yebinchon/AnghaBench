
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_char ;
typedef int u32 ;
struct TYPE_11__ {void* size; void* addr; } ;
struct sym_pmc {TYPE_4__ sg; void* ret; } ;
typedef int hcb_p ;
typedef TYPE_5__* ccb_p ;
struct TYPE_8__ {int goalp; } ;
struct TYPE_10__ {TYPE_2__* data; struct sym_pmc pm1; struct sym_pmc pm0; TYPE_1__ head; } ;
struct TYPE_12__ {int host_flags; TYPE_3__ phys; } ;
struct TYPE_9__ {int size; int addr; } ;


 int HF_ACT_PM ;
 int HF_DP_SAVED ;
 int HF_PRT ;
 int HF_SENSE ;
 int INB (int ) ;
 int INL (int ) ;
 int OUTB (int ,int) ;
 int OUTL (int ,int) ;
 int OUTL_DSP (int) ;
 int SCRIPTA_BA (int ,int ) ;
 int SCRIPTB_BA (int ,int ) ;
 int SYM_CONF_MAX_SG ;
 int clrack ;
 void* cpu_to_scr (int) ;
 int msg_bad ;
 int nc_temp ;
 int pm0_data ;
 int pm1_data ;
 int scr_to_cpu (int ) ;
 int sym_evaluate_dp (int ,TYPE_5__*,int,int*) ;

__attribute__((used)) static void sym_modify_dp(hcb_p np, ccb_p cp, int ofs)
{
 int dp_ofs = ofs;
 u32 dp_scr = INL (nc_temp);
 u32 dp_ret;
 u32 tmp;
 u_char hflags;
 int dp_sg;
 struct sym_pmc *pm;




 if (cp->host_flags & HF_SENSE)
  goto out_reject;





 dp_sg = sym_evaluate_dp(np, cp, dp_scr, &dp_ofs);
 if (dp_sg < 0)
  goto out_reject;





 dp_ret = cpu_to_scr(cp->phys.head.goalp);
 dp_ret = dp_ret - 8 - (SYM_CONF_MAX_SG - dp_sg) * (2*4);





 if (dp_ofs == 0) {
  dp_scr = dp_ret;
  goto out_ok;
 }




 hflags = INB (HF_PRT);

 if (hflags & HF_DP_SAVED)
  hflags ^= HF_ACT_PM;

 if (!(hflags & HF_ACT_PM)) {
  pm = &cp->phys.pm0;
  dp_scr = SCRIPTA_BA (np, pm0_data);
 }
 else {
  pm = &cp->phys.pm1;
  dp_scr = SCRIPTA_BA (np, pm1_data);
 }

 hflags &= ~(HF_DP_SAVED);

 OUTB (HF_PRT, hflags);
 pm->ret = cpu_to_scr(dp_ret);
 tmp = scr_to_cpu(cp->phys.data[dp_sg-1].addr);
 tmp += scr_to_cpu(cp->phys.data[dp_sg-1].size) + dp_ofs;
 pm->sg.addr = cpu_to_scr(tmp);
 pm->sg.size = cpu_to_scr(-dp_ofs);

out_ok:
 OUTL (nc_temp, dp_scr);
 OUTL_DSP (SCRIPTA_BA (np, clrack));
 return;

out_reject:
 OUTL_DSP (SCRIPTB_BA (np, msg_bad));
}
