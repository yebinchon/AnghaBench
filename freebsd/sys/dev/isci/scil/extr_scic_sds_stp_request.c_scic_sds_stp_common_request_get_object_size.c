
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ U32 ;
typedef int SCU_TASK_CONTEXT_T ;
typedef int SCIC_SDS_STP_REQUEST_T ;
typedef int SATA_FIS_REG_H2D_T ;
typedef int SATA_FIS_REG_D2H_T ;


 scalar_t__ CACHE_LINE_SIZE ;

__attribute__((used)) static
U32 scic_sds_stp_common_request_get_object_size(void)
{
   return sizeof(SCIC_SDS_STP_REQUEST_T)
          + sizeof(SATA_FIS_REG_H2D_T)
          + sizeof(U32)
          + sizeof(SATA_FIS_REG_D2H_T)
          + sizeof(U32)
          + sizeof(SCU_TASK_CONTEXT_T)
          + CACHE_LINE_SIZE;
}
