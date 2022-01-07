
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_int ;
struct sge_params {int dummy; } ;
struct TYPE_6__ {scalar_t__ rev; } ;
struct TYPE_7__ {int flags; TYPE_1__ params; } ;
typedef TYPE_2__ adapter_t ;


 int A_SG_CMDQ_CREDIT_TH ;
 int A_SG_CONTROL ;
 int A_SG_DRB_PRI_THRESH ;
 int A_SG_EGR_RCQ_DRB_THRSH ;
 int A_SG_HI_DRB_HI_THRSH ;
 int A_SG_HI_DRB_LO_THRSH ;
 int A_SG_LO_DRB_HI_THRSH ;
 int A_SG_LO_DRB_LO_THRSH ;
 int A_SG_OCO_BASE ;
 int A_SG_TIMER_TICK ;
 int F_AVOIDCQOVFL ;
 int F_BIGENDIANINGRESS ;
 int F_CONGMODE ;
 int F_CQCRDTCTRL ;
 int F_DROPPKT ;
 int F_EGRGENCTRL ;
 int F_FATLPERREN ;
 int F_FLMODE ;
 int F_ISCSICOALESCING ;
 int F_ONEINTMULTQ ;
 int F_OPTONEINTMULTQ ;
 int F_TNLFLMODE ;
 scalar_t__ PAGE_SHIFT ;
 scalar_t__ T3_REV_C ;
 int USING_MSI ;
 int USING_MSIX ;
 int V_BASE1 (int) ;
 int V_HIRCQDRBTHRSH (int) ;
 int V_HOSTPAGESIZE (scalar_t__) ;
 int V_LORCQDRBTHRSH (int) ;
 int V_PKTSHIFT (int) ;
 int V_THRESHOLD (int) ;
 int V_TIMEOUT (int) ;
 int V_USERSPACESIZE (int) ;
 int core_ticks_per_usec (TYPE_2__*) ;
 int t3_write_reg (TYPE_2__*,int ,int) ;

void
t3_sge_init(adapter_t *adap, struct sge_params *p)
{
 u_int ctrl, ups;

 ups = 0;

 ctrl = F_DROPPKT | V_PKTSHIFT(2) | F_FLMODE | F_AVOIDCQOVFL |
        F_CQCRDTCTRL | F_CONGMODE | F_TNLFLMODE | F_FATLPERREN |
        V_HOSTPAGESIZE(PAGE_SHIFT - 11) | F_BIGENDIANINGRESS |
        V_USERSPACESIZE(ups ? ups - 1 : 0) | F_ISCSICOALESCING;



 if (adap->params.rev > 0) {
  if (!(adap->flags & (USING_MSIX | USING_MSI)))
   ctrl |= F_ONEINTMULTQ | F_OPTONEINTMULTQ;
 }
 t3_write_reg(adap, A_SG_CONTROL, ctrl);
 t3_write_reg(adap, A_SG_EGR_RCQ_DRB_THRSH, V_HIRCQDRBTHRSH(512) |
       V_LORCQDRBTHRSH(512));
 t3_write_reg(adap, A_SG_TIMER_TICK, core_ticks_per_usec(adap) / 10);
 t3_write_reg(adap, A_SG_CMDQ_CREDIT_TH, V_THRESHOLD(32) |
       V_TIMEOUT(200 * core_ticks_per_usec(adap)));
 t3_write_reg(adap, A_SG_HI_DRB_HI_THRSH,
       adap->params.rev < T3_REV_C ? 1000 : 500);
 t3_write_reg(adap, A_SG_HI_DRB_LO_THRSH, 256);
 t3_write_reg(adap, A_SG_LO_DRB_HI_THRSH, 1000);
 t3_write_reg(adap, A_SG_LO_DRB_LO_THRSH, 256);
 t3_write_reg(adap, A_SG_OCO_BASE, V_BASE1(0xfff));
 t3_write_reg(adap, A_SG_DRB_PRI_THRESH, 63 * 1024);
}
