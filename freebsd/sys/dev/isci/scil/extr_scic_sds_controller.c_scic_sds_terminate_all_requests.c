
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCI_STATUS ;
typedef int SCIC_SDS_CONTROLLER_T ;


 int scic_sds_terminate_reqests (int *,int *,int *) ;

__attribute__((used)) static
SCI_STATUS scic_sds_terminate_all_requests(
        SCIC_SDS_CONTROLLER_T * controller
)
{
    return scic_sds_terminate_reqests(controller, ((void*)0), ((void*)0));
}
