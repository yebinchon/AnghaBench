
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;


 int MAX (int ,int ) ;
 int scic_sds_smp_request_get_object_size () ;
 int scic_sds_ssp_request_get_object_size () ;
 int scic_sds_stp_request_get_object_size () ;

U32 scic_io_request_get_object_size(void)
{
   U32 ssp_request_size;
   U32 stp_request_size;
   U32 smp_request_size;

   ssp_request_size = scic_sds_ssp_request_get_object_size();
   stp_request_size = scic_sds_stp_request_get_object_size();
   smp_request_size = scic_sds_smp_request_get_object_size();

   return MAX(ssp_request_size, MAX(stp_request_size, smp_request_size));
}
