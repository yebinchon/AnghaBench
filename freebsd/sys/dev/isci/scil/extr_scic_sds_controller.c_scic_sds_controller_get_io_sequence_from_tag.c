
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U16 ;
typedef int SCIC_SDS_CONTROLLER_T ;


 int scic_sds_io_tag_get_sequence (int ) ;

U16 scic_sds_controller_get_io_sequence_from_tag(
   SCIC_SDS_CONTROLLER_T *this_controller,
   U16 io_tag
)
{
   return scic_sds_io_tag_get_sequence(io_tag);
}
