
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int count; } ;
struct TYPE_5__ {int count; } ;
struct TYPE_7__ {TYPE_2__ address_table; TYPE_1__ buffers; } ;
typedef TYPE_3__ SCIC_SDS_UNSOLICITED_FRAME_CONTROL_T ;


 int SCU_ABSOLUTE_MAX_UNSOLICITED_FRAMES ;
 int SCU_MIN_UF_TABLE_ENTRIES ;

void scic_sds_unsolicited_frame_control_set_address_table_count(
   SCIC_SDS_UNSOLICITED_FRAME_CONTROL_T *uf_control
)
{
   uf_control->address_table.count = SCU_MIN_UF_TABLE_ENTRIES;
   while (
            (uf_control->address_table.count < uf_control->buffers.count)
         && (uf_control->address_table.count < SCU_ABSOLUTE_MAX_UNSOLICITED_FRAMES)
         )
   {
      uf_control->address_table.count <<= 1;
   }
}
