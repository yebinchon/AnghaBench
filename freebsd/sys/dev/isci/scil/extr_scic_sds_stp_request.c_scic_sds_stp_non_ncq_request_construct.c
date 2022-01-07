
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int has_started_substate_machine; } ;
typedef TYPE_1__ SCIC_SDS_REQUEST_T ;


 int TRUE ;

void scic_sds_stp_non_ncq_request_construct(
   SCIC_SDS_REQUEST_T * this_request
)
{
   this_request->has_started_substate_machine = TRUE;
}
