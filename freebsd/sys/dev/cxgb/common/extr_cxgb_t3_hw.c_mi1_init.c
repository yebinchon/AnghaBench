
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct adapter_info {int dummy; } ;
struct TYPE_6__ {int cclk; int mdc; } ;
struct TYPE_7__ {TYPE_1__ vpd; } ;
struct TYPE_8__ {TYPE_2__ params; } ;
typedef TYPE_3__ adapter_t ;


 int A_MI1_CFG ;
 int F_PREEN ;
 int V_CLKDIV (int) ;
 int t3_write_reg (TYPE_3__*,int ,int) ;

__attribute__((used)) static void mi1_init(adapter_t *adap, const struct adapter_info *ai)
{
        u32 clkdiv = adap->params.vpd.cclk / (2 * adap->params.vpd.mdc) - 1;
        u32 val = F_PREEN | V_CLKDIV(clkdiv);

        t3_write_reg(adap, A_MI1_CFG, val);
}
