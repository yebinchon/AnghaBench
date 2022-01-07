
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sli; } ;
typedef TYPE_1__ ocs_hw_t ;
typedef int int32_t ;


 int SLI4_REG_SLIPORT_ERROR1 ;
 int SLI4_REG_SLIPORT_ERROR2 ;
 int sli_reg_read (int *,int ) ;

__attribute__((used)) static int32_t
ocs_hw_get_fw_timed_out(ocs_hw_t *hw)
{



 return (sli_reg_read(&hw->sli, SLI4_REG_SLIPORT_ERROR1) == 0x2 &&
  sli_reg_read(&hw->sli, SLI4_REG_SLIPORT_ERROR2) == 0x10);
}
