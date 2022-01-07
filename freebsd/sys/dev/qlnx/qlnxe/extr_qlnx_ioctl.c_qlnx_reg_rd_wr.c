
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ecore_hwfn {int dummy; } ;
struct TYPE_7__ {size_t hwfn_index; int cmd; int val; int addr; int access_type; } ;
typedef TYPE_2__ qlnx_reg_rd_wr_t ;
struct TYPE_6__ {struct ecore_hwfn* hwfns; } ;
struct TYPE_8__ {TYPE_1__ cdev; } ;
typedef TYPE_3__ qlnx_host_t ;


 int EINVAL ;
 size_t QLNX_MAX_HW_FUNCS ;
 int QLNX_REG_ACCESS_DIRECT ;


 int qlnx_reg_rd32 (struct ecore_hwfn*,int ) ;
 int qlnx_reg_wr32 (struct ecore_hwfn*,int ,int ) ;

__attribute__((used)) static int
qlnx_reg_rd_wr(qlnx_host_t *ha, qlnx_reg_rd_wr_t *reg_rd_wr)
{
 int rval = 0;
 struct ecore_hwfn *p_hwfn;

 if (reg_rd_wr->hwfn_index >= QLNX_MAX_HW_FUNCS) {
  return (EINVAL);
 }

 p_hwfn = &ha->cdev.hwfns[reg_rd_wr->hwfn_index];

 switch (reg_rd_wr->cmd) {

  case 129:
   if (reg_rd_wr->access_type == QLNX_REG_ACCESS_DIRECT) {
    reg_rd_wr->val = qlnx_reg_rd32(p_hwfn,
       reg_rd_wr->addr);
   }
   break;

  case 128:
   if (reg_rd_wr->access_type == QLNX_REG_ACCESS_DIRECT) {
    qlnx_reg_wr32(p_hwfn, reg_rd_wr->addr,
     reg_rd_wr->val);
   }
   break;

  default:
   rval = EINVAL;
   break;
 }

 return (rval);
}
