
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_8__ {int count; } ;
struct TYPE_9__ {TYPE_1__ address_table; } ;
struct TYPE_10__ {TYPE_2__ uf_control; } ;
typedef TYPE_3__ SCIC_SDS_CONTROLLER_T ;


 int ENABLE_BIT ;
 int POINTER ;
 int QUEUE_SIZE ;
 int SCU_UFQC_GEN_VAL (int ,int ) ;
 int SCU_UFQC_WRITE (TYPE_3__*,int) ;
 int SCU_UFQGP_GEN_BIT (int ) ;
 int SCU_UFQGP_GEN_VAL (int ,int ) ;
 int SCU_UFQGP_WRITE (TYPE_3__*,int) ;
 int SCU_UFQPP_GEN_VAL (int ,int ) ;
 int SCU_UFQPP_WRITE (TYPE_3__*,int) ;

void scic_sds_controller_initialize_unsolicited_frame_queue(
   SCIC_SDS_CONTROLLER_T *this_controller
)
{
   U32 frame_queue_control_value;
   U32 frame_queue_get_value;
   U32 frame_queue_put_value;


   frame_queue_control_value =
      SCU_UFQC_GEN_VAL(QUEUE_SIZE, this_controller->uf_control.address_table.count);

   SCU_UFQC_WRITE(this_controller, frame_queue_control_value);


   frame_queue_get_value = (
         SCU_UFQGP_GEN_VAL(POINTER, 0)
      | SCU_UFQGP_GEN_BIT(ENABLE_BIT)
      );

   SCU_UFQGP_WRITE(this_controller, frame_queue_get_value);


   frame_queue_put_value = SCU_UFQPP_GEN_VAL(POINTER, 0);

   SCU_UFQPP_WRITE(this_controller, frame_queue_put_value);
}
