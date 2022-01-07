
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ U32 ;
typedef int SCU_SGL_ELEMENT_PAIR_T ;


 int SCU_MAX_SGL_ELEMENT_PAIRS ;
 scalar_t__ scic_sds_stp_common_request_get_object_size () ;

U32 scic_sds_stp_request_get_object_size(void)
{
   return scic_sds_stp_common_request_get_object_size()
          + sizeof(SCU_SGL_ELEMENT_PAIR_T) * SCU_MAX_SGL_ELEMENT_PAIRS;
}
