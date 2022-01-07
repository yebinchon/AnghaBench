
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U8 ;
typedef int U32 ;
typedef int SCIC_SDS_LIBRARY_T ;


 int scic_sds_controller_get_object_size () ;

U32 scic_library_get_object_size(
   U8 max_controller_count
)
{
   return sizeof(SCIC_SDS_LIBRARY_T)
          + scic_sds_controller_get_object_size() * max_controller_count;
}
