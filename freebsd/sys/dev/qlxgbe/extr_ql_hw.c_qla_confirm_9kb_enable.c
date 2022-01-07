
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ enable_9kb; int mbx_intr_mask_offset; } ;
struct TYPE_8__ {TYPE_1__ hw; } ;
typedef TYPE_2__ qla_host_t ;


 int BIT_2 ;
 int Q8_MBOX_INT_ENABLE ;
 int Q8_MBOX_INT_MASK_MSIX ;
 int READ_REG32 (TYPE_2__*,int ) ;
 int WRITE_REG32 (TYPE_2__*,int ,int) ;
 int qla_get_nic_partition (TYPE_2__*,int *,int *) ;
 int supports_9kb ;

void
qla_confirm_9kb_enable(qla_host_t *ha)
{


 ha->hw.mbx_intr_mask_offset = READ_REG32(ha, Q8_MBOX_INT_MASK_MSIX);


 WRITE_REG32(ha, Q8_MBOX_INT_ENABLE, BIT_2);
 WRITE_REG32(ha, ha->hw.mbx_intr_mask_offset, 0x0);






 ha->hw.enable_9kb = 0;

 return;
}
