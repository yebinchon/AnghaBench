
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U8 ;
typedef scalar_t__ U32 ;


 scalar_t__ SCIF_LIBRARY_SIZE (int ) ;
 scalar_t__ scic_library_get_object_size (int ) ;

U32 scif_library_get_object_size(
   U8 max_controller_count
)
{
   return ( SCIF_LIBRARY_SIZE(max_controller_count) +
            scic_library_get_object_size(max_controller_count) );
}
